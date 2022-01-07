
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ ENOTSUP ;
 int F_FULLFSYNC ;
 scalar_t__ OS_VXWORKS ;
 int UNUSED_PARAMETER (int) ;
 scalar_t__ errno ;
 int fdatasync (int) ;
 int fsync (int) ;
 int osFcntl (int,int ,int ) ;
 int osFstat (int,struct stat*) ;
 int sqlite3_fullsync_count ;
 int sqlite3_sync_count ;

__attribute__((used)) static int full_fsync(int fd, int fullSync, int dataOnly){
  int rc;
  UNUSED_PARAMETER(fullSync);
  UNUSED_PARAMETER(dataOnly);
  rc = fdatasync(fd);







  if( OS_VXWORKS && rc!= -1 ){
    rc = 0;
  }
  return rc;
}
