
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CloseTransientFile (int) ;
 int ENOENT ;
 int O_RDWR ;
 int OpenTransientFile (char const*,int) ;
 int PG_BINARY ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*,...) ;
 int errno ;
 scalar_t__ fsync_fname_ext (char const*,int,int,int) ;
 scalar_t__ fsync_parent_path (char const*,int) ;
 scalar_t__ pg_fsync (int) ;
 scalar_t__ rename (char const*,char const*) ;

int
durable_rename(const char *oldfile, const char *newfile, int elevel)
{
 int fd;
 if (fsync_fname_ext(oldfile, 0, 0, elevel) != 0)
  return -1;

 fd = OpenTransientFile(newfile, PG_BINARY | O_RDWR);
 if (fd < 0)
 {
  if (errno != ENOENT)
  {
   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\": %m", newfile)));
   return -1;
  }
 }
 else
 {
  if (pg_fsync(fd) != 0)
  {
   int save_errno;


   save_errno = errno;
   CloseTransientFile(fd);
   errno = save_errno;

   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not fsync file \"%s\": %m", newfile)));
   return -1;
  }

  if (CloseTransientFile(fd) != 0)
  {
   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not close file \"%s\": %m", newfile)));
   return -1;
  }
 }


 if (rename(oldfile, newfile) < 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not rename file \"%s\" to \"%s\": %m",
      oldfile, newfile)));
  return -1;
 }





 if (fsync_fname_ext(newfile, 0, 0, elevel) != 0)
  return -1;

 if (fsync_parent_path(newfile, elevel) != 0)
  return -1;

 return 0;
}
