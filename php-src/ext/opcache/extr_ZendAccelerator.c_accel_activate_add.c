
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_start; int l_len; int l_whence; int l_type; } ;


 int ACCEL_LOG_DEBUG ;
 int FAILURE ;
 int F_RDLCK ;
 int F_SETLK ;
 int INCREMENT (int ) ;
 int SEEK_SET ;
 int SHM_PROTECT () ;
 int SHM_UNPROTECT () ;
 int SUCCESS ;
 int errno ;
 int fcntl (int ,int ,struct flock*) ;
 int lock_file ;
 int mem_usage ;
 int strerror (int ) ;
 int zend_accel_error (int ,char*,int ,int ) ;

__attribute__((used)) static inline int accel_activate_add(void)
{





 struct flock mem_usage_lock;

 mem_usage_lock.l_type = F_RDLCK;
 mem_usage_lock.l_whence = SEEK_SET;
 mem_usage_lock.l_start = 1;
 mem_usage_lock.l_len = 1;

 if (fcntl(lock_file, F_SETLK, &mem_usage_lock) == -1) {
  zend_accel_error(ACCEL_LOG_DEBUG, "UpdateC(+1):  %s (%d)", strerror(errno), errno);
  return FAILURE;
 }

 return SUCCESS;
}
