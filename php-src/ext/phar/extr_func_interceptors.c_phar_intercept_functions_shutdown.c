
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_function ;
typedef int PHAR_G ;


 int PHAR_RELEASE (int ) ;
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
 int is_readable ;
 int is_writable ;
 int lstat ;
 int opendir ;
 int readfile ;
 int stat ;

void phar_intercept_functions_shutdown(void)
{
 zend_function *orig;

 PHAR_RELEASE(fopen);
 PHAR_RELEASE(file_get_contents);
 PHAR_RELEASE(is_file);
 PHAR_RELEASE(is_dir);
 PHAR_RELEASE(opendir);
 PHAR_RELEASE(file_exists);
 PHAR_RELEASE(fileperms);
 PHAR_RELEASE(fileinode);
 PHAR_RELEASE(filesize);
 PHAR_RELEASE(fileowner);
 PHAR_RELEASE(filegroup);
 PHAR_RELEASE(fileatime);
 PHAR_RELEASE(filemtime);
 PHAR_RELEASE(filectime);
 PHAR_RELEASE(filetype);
 PHAR_RELEASE(is_writable);
 PHAR_RELEASE(is_readable);
 PHAR_RELEASE(is_executable);
 PHAR_RELEASE(lstat);
 PHAR_RELEASE(stat);
 PHAR_RELEASE(readfile);
 PHAR_G(intercepted) = 0;
}
