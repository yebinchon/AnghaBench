
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dstpath ;


 int MAXPGPATH ;
 char* datadir_target ;
 scalar_t__ dry_run ;
 int pg_fatal (char*,char*) ;
 scalar_t__ rmdir (char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static void
remove_target_dir(const char *path)
{
 char dstpath[MAXPGPATH];

 if (dry_run)
  return;

 snprintf(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
 if (rmdir(dstpath) != 0)
  pg_fatal("could not remove directory \"%s\": %m",
     dstpath);
}
