
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 scalar_t__ access (char*,int) ;
 int check_bin_dir (int *) ;
 int check_data_dir (int *) ;
 int new_cluster ;
 int old_cluster ;
 int pg_fatal (char*) ;
 scalar_t__ win32_check_directory_write_permissions () ;

void
verify_directories(void)
{

 if (access(".", R_OK | W_OK | X_OK) != 0)



  pg_fatal("You must have read and write access in the current directory.\n");

 check_bin_dir(&old_cluster);
 check_data_dir(&old_cluster);
 check_bin_dir(&new_cluster);
 check_data_dir(&new_cluster);
}
