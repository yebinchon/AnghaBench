
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int dstpath ;


 int MAXPGPATH ;
 int O_WRONLY ;
 int close (int) ;
 char* datadir_target ;
 scalar_t__ dry_run ;
 scalar_t__ ftruncate (int,scalar_t__) ;
 int open (char*,int ,int ) ;
 int pg_fatal (char*,char*,...) ;
 int pg_file_create_mode ;
 int snprintf (char*,int,char*,char*,char const*) ;

void
truncate_target_file(const char *path, off_t newsize)
{
 char dstpath[MAXPGPATH];
 int fd;

 if (dry_run)
  return;

 snprintf(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);

 fd = open(dstpath, O_WRONLY, pg_file_create_mode);
 if (fd < 0)
  pg_fatal("could not open file \"%s\" for truncation: %m",
     dstpath);

 if (ftruncate(fd, newsize) != 0)
  pg_fatal("could not truncate file \"%s\" to %u: %m",
     dstpath, (unsigned int) newsize);

 close(fd);
}
