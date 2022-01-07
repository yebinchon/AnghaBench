
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enableFsync ;
 int fsync (int) ;

int
pg_fsync_no_writethrough(int fd)
{
 if (enableFsync)
  return fsync(fd);
 else
  return 0;
}
