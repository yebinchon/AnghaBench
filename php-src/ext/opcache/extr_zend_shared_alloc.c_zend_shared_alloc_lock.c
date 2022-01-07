
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_len; int l_pid; scalar_t__ l_start; int l_whence; int l_type; } ;
typedef int ZCG ;


 int ACCEL_LOG_ERROR ;
 scalar_t__ EINTR ;
 int F_SETLKW ;
 int F_WRLCK ;
 int SEEK_SET ;
 scalar_t__ errno ;
 int fcntl (int ,int ,struct flock*) ;
 int getpid () ;
 int lock_file ;
 int strerror (scalar_t__) ;
 int tsrm_mutex_lock (int ) ;
 int zend_accel_error (int ,char*,int ,scalar_t__) ;
 int zend_shared_alloc_lock_win32 () ;
 int zts_lock ;

void zend_shared_alloc_lock(void)
{

 struct flock mem_write_lock;

 mem_write_lock.l_type = F_WRLCK;
 mem_write_lock.l_whence = SEEK_SET;
 mem_write_lock.l_start = 0;
 mem_write_lock.l_len = 1;
 while (1) {
  if (fcntl(lock_file, F_SETLKW, &mem_write_lock) == -1) {
   if (errno == EINTR) {
    continue;
   }
   zend_accel_error(ACCEL_LOG_ERROR, "Cannot create lock - %s (%d)", strerror(errno), errno);
  }
  break;
 }




 ZCG(locked) = 1;
}
