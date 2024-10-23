-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 12:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `profile`) VALUES
(1, 'admin', 'bj123', 'abc.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `appointment_date` varchar(100) NOT NULL,
  `symptoms` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date_booked` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `firstname`, `surname`, `gender`, `phone`, `appointment_date`, `symptoms`, `status`, `date_booked`) VALUES
(1, 'Deep', 'Limbachiya', 'Male', '7578787578', '2024-02-14', 'corona', 'Discharge', '2024-01-29 16:31:59'),
(2, 'Deep', 'Limbachiya', 'Male', '7578787578', '2024-02-14', 'corona', 'Discharge', '2024-01-29 17:31:58'),
(3, 'Deep', 'Limbachiya', 'Male', '7578787578', '2024-02-09', 'headache', 'Pendding', '2024-02-09 13:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `data_reg` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `firstname`, `surname`, `username`, `email`, `gender`, `phone`, `state`, `password`, `salary`, `data_reg`, `status`, `profile`) VALUES
(3, 'Bharat', 'Panchal', 'Bharat', 'bj@gmail.com', 'Male', '12121212121', 'Gujarat', 'bj12', '500033', '2024-01-18 10:54:39', 'Approved', 'doctor2.jpg'),
(4, 'Jwalant', 'Rohit', 'Jwalant', 'bj1@gmail.com', 'Male', '2365468448', 'Gujarat', 'bj12', '50000', '2024-01-22 12:26:04', 'Approved', 'doctor.webp'),
(5, 'Kaushal', 'Darji', 'kd', 'kd@gmail.com', 'Male', '1516546516', 'Punjab', 'bj12', '30000', '2024-01-22 14:13:46', 'Approved', 'doctor.webp'),
(6, 'Sujal', 'Pariyani', 'sp', 'sp@gmail.com', 'Male', '654654654', 'Punjab', 'bj12', '0', '2024-01-23 16:07:06', 'Pendding', 'doctor.webp'),
(7, 'abc', 'abc', 'abc', 'abc@gmail.com', 'Male', '123', 'Gujarat', 'abc', '0', '2024-02-11 17:36:10', 'Rejected', 'doctor.webp'),
(8, 'abc', 'abc', 'abc', 'abc@gmail', 'Male', '123', 'Gujarat', 'abc', '0', '2024-02-11 17:40:10', 'Approved', 'doctor.webp'),
(9, 'bca', 'bca', 'bca', 'bca@gmail.com', 'Male', '123', 'Gujarat', 'bca', '0', '2024-02-11 17:47:40', 'Pendding', 'doctor.webp');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `date_discharge` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `doctor`, `patient`, `date_discharge`, `amount_paid`, `description`) VALUES
(1, 'Bharat', 'Deep', '2024-01-30 15:11:54', '5000', 'sleep more than 8 hour per day'),
(2, 'Bharat', 'Deep', '2024-01-30 15:16:59', '5000', 'sleep more than 8 hour per day'),
(3, 'Bharat', 'Deep', '2024-01-30 15:17:52', '1000', 'medicine');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `firstname`, `surname`, `username`, `email`, `phone`, `gender`, `state`, `password`, `date_reg`, `profile`) VALUES
(3, 'Arya', 'Variya', 'av', 'av@gmail.com', '9898989898', 'Male', 'Mumbai', 'bj12', '2024-01-23 15:26:17', 'patient.webp'),
(4, 'Deep', 'Limbachiya', 'deep', 'dl@gmail.com', '7578787578', 'Male', 'Mumbai', 'bj123', '2024-01-23 15:27:59', 'patient.jpg'),
(10, 'Om', 'mistry', 'om', 'om@gmail.com', '4587458745', 'Male', 'Delhi', 'bj12', '2024-01-24 10:23:11', 'patient.webp');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date_send` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `title`, `message`, `username`, `date_send`) VALUES
(1, 'Send Report', 'My invoice i received too much ', 'dl', '2024-01-25 16:58:10'),
(3, 'Send Report', 'World', 'dl', '2024-01-25 17:05:38'),
(4, 'Send Report', 'World', 'dl', '2024-01-25 17:07:18'),
(5, 'Send Report', 'World', 'dl', '2024-01-25 17:09:57'),
(6, 'Send Report', 'World', 'dl', '2024-01-25 17:38:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
