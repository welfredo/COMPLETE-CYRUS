-- DataDesk Student Database Management System
-- Example MySQL schema for database-learning purposes.
CREATE DATABASE IF NOT EXISTS datadesk_students;
USE datadesk_students;

CREATE TABLE IF NOT EXISTS students (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(90) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    course VARCHAR(20) NOT NULL,
    year_level ENUM('1st Year','2nd Year','3rd Year','4th Year') NOT NULL,
    status ENUM('Active','Inactive') NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO students (student_id, full_name, email, course, year_level, status) VALUES
('2026-001','Alex Santos','alex.santos@example.com','BSIT','1st Year','Active'),
('2026-002','Jamie Cruz','jamie.cruz@example.com','BSCS','2nd Year','Active'),
('2026-003','Taylor Reyes','taylor.reyes@example.com','BSIT','3rd Year','Inactive');
