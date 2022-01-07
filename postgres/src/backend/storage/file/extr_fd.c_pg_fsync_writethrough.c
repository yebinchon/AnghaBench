
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int F_FULLFSYNC ;
 int _commit (int) ;
 scalar_t__ enableFsync ;
 int errno ;
 int fcntl (int,int ,int ) ;

int
pg_fsync_writethrough(int fd)
{
 if (enableFsync)
 {





  errno = ENOSYS;
  return -1;

 }
 else
  return 0;
}
