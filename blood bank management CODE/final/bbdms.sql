1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');


CREATE TABLE IF NOT EXISTS `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'MANASA s', '1234567890', 'manasas@gmail.com', 'Female', 21, 'O+', ' jigani', ' hey', '2020-09-30 20:8:20', 1),
(2, 'Bharath', '41241241241', 'bharath@gmail.com', 'Male', 21, 'AB-', ' Bellary', ' ssup', '2020-09-30 20:48:11', 1),
(3, 'Harshitha', '42352352352', 'harshi@gmail.com', 'Female', 23, 'A+', 'Electroniccity', 'Nothing',  '2020-09-01 07:21:21', 1),
(4, 'Kiran', '35345435345', 'kiran@gmail.com', 'Male', 20, '0-', 'Kumaraswamylayout', ' wt u doing ', '2020-10-01 07:21:42', 1),
(5, 'Nitesh Kumart', '8569855244', 'niiii@gmail.com', 'Male', 32, 'A-', 'Out of universe', 'Dancing', '2020-07-10 09:00:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE IF NOT EXISTS `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A+', '2020-09-30 20:08:20'),
(2, 'AB-', '2020-09-30 20:34:00'),
(3, 'O-', '2020-09-30 20:34:05'),
(4, 'A-', '2020-09-30 20:34:10'),
(5, 'A+', '2020-09-30 20:34:13'),
(6, 'AB+', '2020-09-30 20:34:18');



CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test 																							', 'test@test.com', '9945406404');


CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kiran Kumar', 'kirankkm@gmail.com', '2147483647', 'hfehfekf', '2020-06-18 10:03:07', 1),
(2, 'manasa', 'manasa@gmail.com', '42342342', 'drftghjk', '2020-06-30 21:17:09', NULL),
(3, 'bharath', 'bharath@gmail.com', '42342342', 'drftghjk', '2020-06-30 21:21:30', NULL),
(4, 'Harshitha', 'harshi@gmail.com', '75787875545', 'sfsdf ', '2020-07-01 07:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">A blood donation truly is a “gift of life” that a healthy individual can give to others in their community who are sick or injured. In one hour’s time, a person can donate one unit of blood that can be separated into four individual components that could help save multiple lives.From one unit of blood, red blood cells can be extracted for use in trauma or surgical patients. Plasma, the liquid part of blood, is administered to patients with clotting problems. The third component of blood, platelets, clot the blood when cuts or other open wounds occur, and are often used in cancer and transplant patients. Cryoprecipitated anti-hemophilic factor (AHF) is also used for clotting factors.</span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">This is a basic website created by my team which helps the  the patients to get blood easily and donor can register in this website by creating a database.This project also includes an admin panel where we can manage the website easily and is very comfortable to use.</span>');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;

ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;

