
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CloseTransientFile (int) ;
 scalar_t__ EACCES ;
 int O_RDONLY ;
 int OpenTransientFile (char const*,int) ;
 int PG_BINARY ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 int pg_flush_data (int,int ,int ) ;

__attribute__((used)) static void
pre_sync_fname(const char *fname, bool isdir, int elevel)
{
 int fd;


 if (isdir)
  return;

 fd = OpenTransientFile(fname, O_RDONLY | PG_BINARY);

 if (fd < 0)
 {
  if (errno == EACCES)
   return;
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", fname)));
  return;
 }





 pg_flush_data(fd, 0, 0);

 if (CloseTransientFile(fd) != 0)
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m", fname)));
}
