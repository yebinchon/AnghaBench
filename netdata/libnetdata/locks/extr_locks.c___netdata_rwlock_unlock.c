
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_rwlock_t ;


 int error (char*,int) ;
 int netdata_thread_enable_cancelability () ;
 int pthread_rwlock_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int __netdata_rwlock_unlock(netdata_rwlock_t *rwlock) {
    int ret = pthread_rwlock_unlock(rwlock);
    if(unlikely(ret != 0))
        error("RW_LOCK: failed to release lock (code %d)", ret);
    else
        netdata_thread_enable_cancelability();

    return ret;
}
