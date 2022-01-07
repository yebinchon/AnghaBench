
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYNC_METHOD_FSYNC_WRITETHROUGH ;
 int pg_fsync_no_writethrough (int) ;
 int pg_fsync_writethrough (int) ;
 scalar_t__ sync_method ;

int
pg_fsync(int fd)
{






  return pg_fsync_no_writethrough(fd);
}
