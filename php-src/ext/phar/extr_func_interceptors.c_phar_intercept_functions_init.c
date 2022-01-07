
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_function ;
typedef int PHAR_G ;


 int PHAR_INTERCEPT (int ) ;
 int file_exists ;
 int file_get_contents ;
 int fileatime ;
 int filectime ;
 int filegroup ;
 int fileinode ;
 int filemtime ;
 int fileowner ;
 int fileperms ;
 int filesize ;
 int filetype ;
 int fopen ;
 int is_dir ;
 int is_executable ;
 int is_file ;
 int is_link ;
 int is_readable ;
 int is_writable ;
 int lstat ;
 int opendir ;
 int readfile ;
 int stat ;

void phar_intercept_functions_init(void)
{
 zend_function *orig;

 PHAR_INTERCEPT(fopen);
 PHAR_INTERCEPT(file_get_contents);
 PHAR_INTERCEPT(is_file);
 PHAR_INTERCEPT(is_link);
 PHAR_INTERCEPT(is_dir);
 PHAR_INTERCEPT(opendir);
 PHAR_INTERCEPT(file_exists);
 PHAR_INTERCEPT(fileperms);
 PHAR_INTERCEPT(fileinode);
 PHAR_INTERCEPT(filesize);
 PHAR_INTERCEPT(fileowner);
 PHAR_INTERCEPT(filegroup);
 PHAR_INTERCEPT(fileatime);
 PHAR_INTERCEPT(filemtime);
 PHAR_INTERCEPT(filectime);
 PHAR_INTERCEPT(filetype);
 PHAR_INTERCEPT(is_writable);
 PHAR_INTERCEPT(is_readable);
 PHAR_INTERCEPT(is_executable);
 PHAR_INTERCEPT(lstat);
 PHAR_INTERCEPT(stat);
 PHAR_INTERCEPT(readfile);
 PHAR_G(intercepted) = 0;
}
