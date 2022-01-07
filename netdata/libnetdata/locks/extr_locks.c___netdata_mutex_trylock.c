
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_mutex_t ;


 int netdata_thread_disable_cancelability () ;
 int netdata_thread_enable_cancelability () ;
 int pthread_mutex_trylock (int *) ;

int __netdata_mutex_trylock(netdata_mutex_t *mutex) {
    netdata_thread_disable_cancelability();

    int ret = pthread_mutex_trylock(mutex);
    if(ret != 0)
        netdata_thread_enable_cancelability();

    return ret;
}
