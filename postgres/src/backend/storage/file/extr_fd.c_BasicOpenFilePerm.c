
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int EMFILE ;
 int ENFILE ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int LOG ;
 scalar_t__ ReleaseLruFile () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errno ;
 int open (char const*,int,int ) ;

int
BasicOpenFilePerm(const char *fileName, int fileFlags, mode_t fileMode)
{
 int fd;

tryAgain:
 fd = open(fileName, fileFlags, fileMode);

 if (fd >= 0)
  return fd;

 if (errno == EMFILE || errno == ENFILE)
 {
  int save_errno = errno;

  ereport(LOG,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("out of file descriptors: %m; release and retry")));
  errno = 0;
  if (ReleaseLruFile())
   goto tryAgain;
  errno = save_errno;
 }

 return -1;
}
