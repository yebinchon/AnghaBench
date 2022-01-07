
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EACCES ;
 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 scalar_t__ EISDIR ;
 int O_RDONLY ;
 int O_RDWR ;
 int PG_BINARY ;
 int close (int) ;
 scalar_t__ errno ;
 int fsync (int) ;
 int open (char const*,int,int ) ;
 int pg_log_error (char*,char const*) ;

int
fsync_fname(const char *fname, bool isdir)
{
 int fd;
 int flags;
 int returncode;







 flags = PG_BINARY;
 if (!isdir)
  flags |= O_RDWR;
 else
  flags |= O_RDONLY;






 fd = open(fname, flags, 0);
 if (fd < 0)
 {
  if (errno == EACCES || (isdir && errno == EISDIR))
   return 0;
  pg_log_error("could not open file \"%s\": %m", fname);
  return -1;
 }

 returncode = fsync(fd);





 if (returncode != 0 && !(isdir && (errno == EBADF || errno == EINVAL)))
 {
  pg_log_error("could not fsync file \"%s\": %m", fname);
  (void) close(fd);
  return -1;
 }

 (void) close(fd);
 return 0;
}
