
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dstpath ;


 int MAXPGPATH ;
 char* datadir_target ;
 scalar_t__ dry_run ;
 int pg_fatal (char*,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
remove_target_symlink(const char *path)
{
 char dstpath[MAXPGPATH];

 if (dry_run)
  return;

 snprintf(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
 if (unlink(dstpath) != 0)
  pg_fatal("could not remove symbolic link \"%s\": %m",
     dstpath);
}
