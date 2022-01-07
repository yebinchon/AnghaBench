
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ l_len; scalar_t__ l_start; int l_whence; int l_type; } ;


 int ACCEL_LOG_DEBUG ;
 int F_SETLK ;
 int F_UNLCK ;
 int SEEK_SET ;
 int accel_deactivate_sub () ;
 int errno ;
 int fcntl (int ,int ,struct flock*) ;
 int lock_file ;
 int strerror (int ) ;
 int zend_accel_error (int ,char*,int ,int ) ;

__attribute__((used)) static inline void accel_unlock_all(void)
{



 struct flock mem_usage_unlock_all;

 mem_usage_unlock_all.l_type = F_UNLCK;
 mem_usage_unlock_all.l_whence = SEEK_SET;
 mem_usage_unlock_all.l_start = 0;
 mem_usage_unlock_all.l_len = 0;

 if (fcntl(lock_file, F_SETLK, &mem_usage_unlock_all) == -1) {
  zend_accel_error(ACCEL_LOG_DEBUG, "UnlockAll:  %s (%d)", strerror(errno), errno);
 }

}
