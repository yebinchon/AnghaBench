
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int Assert (int ) ;
 int basedir ;
 int exit (int) ;
 int * opendir (char*) ;
 int pg_log_error (char*,int ) ;

__attribute__((used)) static DIR *
get_destination_dir(char *dest_folder)
{
 DIR *dir;

 Assert(dest_folder != ((void*)0));
 dir = opendir(dest_folder);
 if (dir == ((void*)0))
 {
  pg_log_error("could not open directory \"%s\": %m", basedir);
  exit(1);
 }

 return dir;
}
