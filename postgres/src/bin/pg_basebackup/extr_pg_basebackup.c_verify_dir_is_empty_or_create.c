
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int pg_check_dir (char*) ;
 int pg_dir_create_mode ;
 int pg_log_error (char*,char*) ;
 int pg_mkdir_p (char*,int ) ;

__attribute__((used)) static void
verify_dir_is_empty_or_create(char *dirname, bool *created, bool *found)
{
 switch (pg_check_dir(dirname))
 {
  case 0:




   if (pg_mkdir_p(dirname, pg_dir_create_mode) == -1)
   {
    pg_log_error("could not create directory \"%s\": %m", dirname);
    exit(1);
   }
   if (created)
    *created = 1;
   return;
  case 1:




   if (found)
    *found = 1;
   return;
  case 2:
  case 3:
  case 4:




   pg_log_error("directory \"%s\" exists but is not empty", dirname);
   exit(1);
  case -1:




   pg_log_error("could not access directory \"%s\": %m", dirname);
   exit(1);
 }
}
