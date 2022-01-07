
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_rwlock_t ;


 int error (char*,int) ;
 int netdata_thread_disable_cancelability () ;
 int netdata_thread_enable_cancelability () ;
 int pthread_rwlock_wrlock (int *) ;
 scalar_t__ unlikely (int) ;

int __netdata_rwlock_wrlock(netdata_rwlock_t *rwlock) {
    netdata_thread_disable_cancelability();

    int ret = pthread_rwlock_wrlock(rwlock);
    if(unlikely(ret != 0)) {
        error("RW_LOCK: failed to obtain write lock (code %d)", ret);
        netdata_thread_enable_cancelability();
    }

    return ret;
}
