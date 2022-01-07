
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
 scalar_t__ symlink (char const*,char*) ;

__attribute__((used)) static void
create_target_symlink(const char *path, const char *link)
{
 char dstpath[MAXPGPATH];

 if (dry_run)
  return;

 snprintf(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
 if (symlink(link, dstpath) != 0)
  pg_fatal("could not create symbolic link at \"%s\": %m",
     dstpath);
}
