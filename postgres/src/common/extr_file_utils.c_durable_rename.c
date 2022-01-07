
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int O_RDWR ;
 int PG_BINARY ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fsync (int) ;
 scalar_t__ fsync_fname (char const*,int) ;
 scalar_t__ fsync_parent_path (char const*) ;
 int open (char const*,int,int ) ;
 int pg_log_error (char*,char const*,...) ;
 scalar_t__ rename (char const*,char const*) ;

int
durable_rename(const char *oldfile, const char *newfile)
{
 int fd;
 if (fsync_fname(oldfile, 0) != 0)
  return -1;

 fd = open(newfile, PG_BINARY | O_RDWR, 0);
 if (fd < 0)
 {
  if (errno != ENOENT)
  {
   pg_log_error("could not open file \"%s\": %m", newfile);
   return -1;
  }
 }
 else
 {
  if (fsync(fd) != 0)
  {
   pg_log_error("could not fsync file \"%s\": %m", newfile);
   close(fd);
   return -1;
  }
  close(fd);
 }


 if (rename(oldfile, newfile) != 0)
 {
  pg_log_error("could not rename file \"%s\" to \"%s\": %m",
      oldfile, newfile);
  return -1;
 }





 if (fsync_fname(newfile, 0) != 0)
  return -1;

 if (fsync_parent_path(newfile) != 0)
  return -1;

 return 0;
}
