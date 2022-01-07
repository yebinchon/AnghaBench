
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dstpath ;


 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 char* datadir_target ;
 scalar_t__ dry_run ;
 scalar_t__ errno ;
 int pg_fatal (char*,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ unlink (char*) ;

void
remove_target_file(const char *path, bool missing_ok)
{
 char dstpath[MAXPGPATH];

 if (dry_run)
  return;

 snprintf(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
 if (unlink(dstpath) != 0)
 {
  if (errno == ENOENT && missing_ok)
   return;

  pg_fatal("could not remove file \"%s\": %m",
     dstpath);
 }
}
