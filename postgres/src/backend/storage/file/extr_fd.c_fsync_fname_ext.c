
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CloseTransientFile (int) ;
 int EACCES ;
 int EBADF ;
 int EINVAL ;
 int EISDIR ;
 int O_RDONLY ;
 int O_RDWR ;
 int OpenTransientFile (char const*,int) ;
 int PG_BINARY ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 int errno ;
 int pg_fsync (int) ;

__attribute__((used)) static int
fsync_fname_ext(const char *fname, bool isdir, bool ignore_perm, int elevel)
{
 int fd;
 int flags;
 int returncode;







 flags = PG_BINARY;
 if (!isdir)
  flags |= O_RDWR;
 else
  flags |= O_RDONLY;

 fd = OpenTransientFile(fname, flags);






 if (fd < 0 && isdir && (errno == EISDIR || errno == EACCES))
  return 0;
 else if (fd < 0 && ignore_perm && errno == EACCES)
  return 0;
 else if (fd < 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", fname)));
  return -1;
 }

 returncode = pg_fsync(fd);





 if (returncode != 0 && !(isdir && (errno == EBADF || errno == EINVAL)))
 {
  int save_errno;


  save_errno = errno;
  (void) CloseTransientFile(fd);
  errno = save_errno;

  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not fsync file \"%s\": %m", fname)));
  return -1;
 }

 if (CloseTransientFile(fd) != 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m", fname)));
  return -1;
 }

 return 0;
}
