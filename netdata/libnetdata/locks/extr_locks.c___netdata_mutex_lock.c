
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_mutex_t ;


 int error (char*,int) ;
 int netdata_thread_disable_cancelability () ;
 int netdata_thread_enable_cancelability () ;
 int pthread_mutex_lock (int *) ;
 scalar_t__ unlikely (int) ;

int __netdata_mutex_lock(netdata_mutex_t *mutex) {
    netdata_thread_disable_cancelability();

    int ret = pthread_mutex_lock(mutex);
    if(unlikely(ret != 0)) {
        netdata_thread_enable_cancelability();
        error("MUTEX_LOCK: failed to get lock (code %d)", ret);
    }
    return ret;
}
