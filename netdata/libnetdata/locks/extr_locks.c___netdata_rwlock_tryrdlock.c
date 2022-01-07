
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_rwlock_t ;


 int netdata_thread_disable_cancelability () ;
 int netdata_thread_enable_cancelability () ;
 int pthread_rwlock_tryrdlock (int *) ;

int __netdata_rwlock_tryrdlock(netdata_rwlock_t *rwlock) {
    netdata_thread_disable_cancelability();

    int ret = pthread_rwlock_tryrdlock(rwlock);
    if(ret != 0)
        netdata_thread_enable_cancelability();

    return ret;
}
