
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int Assert (int) ;
 scalar_t__ closedir (int *) ;
 int exit (int) ;
 int pg_log_error (char*,char*) ;

__attribute__((used)) static void
close_destination_dir(DIR *dest_dir, char *dest_folder)
{
 Assert(dest_dir != ((void*)0) && dest_folder != ((void*)0));
 if (closedir(dest_dir))
 {
  pg_log_error("could not close directory \"%s\": %m", dest_folder);
  exit(1);
 }
}
