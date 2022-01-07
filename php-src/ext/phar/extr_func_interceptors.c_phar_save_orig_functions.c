
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* orig_stat; void* orig_readfile; void* orig_lstat; void* orig_is_executable; void* orig_is_readable; void* orig_is_writable; void* orig_filetype; void* orig_filectime; void* orig_filemtime; void* orig_fileatime; void* orig_filegroup; void* orig_fileowner; void* orig_filesize; void* orig_fileinode; void* orig_fileperms; void* orig_file_exists; void* orig_opendir; void* orig_is_dir; void* orig_is_link; void* orig_is_file; void* orig_file_get_contents; void* orig_fopen; } ;


 void* PHAR_G (int ) ;
 int orig_file_exists ;
 int orig_file_get_contents ;
 int orig_fileatime ;
 int orig_filectime ;
 int orig_filegroup ;
 int orig_fileinode ;
 int orig_filemtime ;
 int orig_fileowner ;
 int orig_fileperms ;
 int orig_filesize ;
 int orig_filetype ;
 int orig_fopen ;
 int orig_is_dir ;
 int orig_is_executable ;
 int orig_is_file ;
 int orig_is_link ;
 int orig_is_readable ;
 int orig_is_writable ;
 int orig_lstat ;
 int orig_opendir ;
 int orig_readfile ;
 int orig_stat ;
 TYPE_1__ phar_orig_functions ;

void phar_save_orig_functions(void)
{
 phar_orig_functions.orig_fopen = PHAR_G(orig_fopen);
 phar_orig_functions.orig_file_get_contents = PHAR_G(orig_file_get_contents);
 phar_orig_functions.orig_is_file = PHAR_G(orig_is_file);
 phar_orig_functions.orig_is_link = PHAR_G(orig_is_link);
 phar_orig_functions.orig_is_dir = PHAR_G(orig_is_dir);
 phar_orig_functions.orig_opendir = PHAR_G(orig_opendir);
 phar_orig_functions.orig_file_exists = PHAR_G(orig_file_exists);
 phar_orig_functions.orig_fileperms = PHAR_G(orig_fileperms);
 phar_orig_functions.orig_fileinode = PHAR_G(orig_fileinode);
 phar_orig_functions.orig_filesize = PHAR_G(orig_filesize);
 phar_orig_functions.orig_fileowner = PHAR_G(orig_fileowner);
 phar_orig_functions.orig_filegroup = PHAR_G(orig_filegroup);
 phar_orig_functions.orig_fileatime = PHAR_G(orig_fileatime);
 phar_orig_functions.orig_filemtime = PHAR_G(orig_filemtime);
 phar_orig_functions.orig_filectime = PHAR_G(orig_filectime);
 phar_orig_functions.orig_filetype = PHAR_G(orig_filetype);
 phar_orig_functions.orig_is_writable = PHAR_G(orig_is_writable);
 phar_orig_functions.orig_is_readable = PHAR_G(orig_is_readable);
 phar_orig_functions.orig_is_executable = PHAR_G(orig_is_executable);
 phar_orig_functions.orig_lstat = PHAR_G(orig_lstat);
 phar_orig_functions.orig_readfile = PHAR_G(orig_readfile);
 phar_orig_functions.orig_stat = PHAR_G(orig_stat);
}
