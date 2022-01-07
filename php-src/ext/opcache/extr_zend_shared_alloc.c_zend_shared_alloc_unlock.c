
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_len; scalar_t__ l_start; int l_whence; int l_type; } ;
typedef int ZCG ;


 int ACCEL_LOG_ERROR ;
 int F_SETLK ;
 int F_UNLCK ;
 int SEEK_SET ;
 int errno ;
 int fcntl (int ,int ,struct flock*) ;
 int lock_file ;
 int strerror (int ) ;
 int tsrm_mutex_unlock (int ) ;
 int zend_accel_error (int ,char*,int ,int ) ;
 int zend_shared_alloc_unlock_win32 () ;
 int zts_lock ;

void zend_shared_alloc_unlock(void)
{

 struct flock mem_write_unlock;

 mem_write_unlock.l_type = F_UNLCK;
 mem_write_unlock.l_whence = SEEK_SET;
 mem_write_unlock.l_start = 0;
 mem_write_unlock.l_len = 1;


 ZCG(locked) = 0;


 if (fcntl(lock_file, F_SETLK, &mem_write_unlock) == -1) {
  zend_accel_error(ACCEL_LOG_ERROR, "Cannot remove lock - %s (%d)", strerror(errno), errno);
 }






}
