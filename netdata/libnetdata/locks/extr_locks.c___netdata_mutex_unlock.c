
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_mutex_t ;


 int error (char*,int) ;
 int netdata_thread_enable_cancelability () ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int __netdata_mutex_unlock(netdata_mutex_t *mutex) {
    int ret = pthread_mutex_unlock(mutex);
    if(unlikely(ret != 0))
        error("MUTEX_LOCK: failed to unlock (code %d).", ret);
    else
        netdata_thread_enable_cancelability();

    return ret;
}
