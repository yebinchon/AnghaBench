
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_thread_t ;


 int error (char*,int) ;
 int pthread_join (int ,void**) ;

int netdata_thread_join(netdata_thread_t thread, void **retval) {
    int ret = pthread_join(thread, retval);
    if(ret != 0)
        error("cannot join thread. pthread_join() failed with code %d.", ret);

    return ret;
}
