
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_start; int l_len; int l_whence; int l_type; } ;
typedef int ZCSG ;


 int ACCEL_LOG_DEBUG ;
 int DECREMENT (int ) ;
 int F_SETLK ;
 int F_UNLCK ;
 int SEEK_SET ;
 int errno ;
 int fcntl (int ,int ,struct flock*) ;
 int lock_file ;
 int restart_in ;
 int strerror (int ) ;
 int zend_accel_error (int ,char*,int ,int ) ;

__attribute__((used)) static inline void accel_restart_leave(void)
{




 struct flock restart_finished;

 restart_finished.l_type = F_UNLCK;
 restart_finished.l_whence = SEEK_SET;
 restart_finished.l_start = 2;
 restart_finished.l_len = 1;

 ZCSG(restart_in_progress) = 0;
 if (fcntl(lock_file, F_SETLK, &restart_finished) == -1) {
  zend_accel_error(ACCEL_LOG_DEBUG, "RestartC(-1):  %s (%d)", strerror(errno), errno);
 }

}
