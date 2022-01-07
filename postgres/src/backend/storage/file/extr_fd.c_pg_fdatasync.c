
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enableFsync ;
 int fdatasync (int) ;
 int fsync (int) ;

int
pg_fdatasync(int fd)
{
 if (enableFsync)
 {



  return fsync(fd);

 }
 else
  return 0;
}
