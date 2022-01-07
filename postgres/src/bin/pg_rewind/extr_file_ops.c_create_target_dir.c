
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dstpath ;


 int MAXPGPATH ;
 char* datadir_target ;
 scalar_t__ dry_run ;
 scalar_t__ mkdir (char*,int ) ;
 int pg_dir_create_mode ;
 int pg_fatal (char*,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static void
create_target_dir(const char *path)
{
 char dstpath[MAXPGPATH];

 if (dry_run)
  return;

 snprintf(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
 if (mkdir(dstpath, pg_dir_create_mode) != 0)
  pg_fatal("could not create directory \"%s\": %m",
     dstpath);
}
