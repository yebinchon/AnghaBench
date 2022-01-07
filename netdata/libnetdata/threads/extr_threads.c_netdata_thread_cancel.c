
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_thread_t ;


 int error (char*,int) ;
 int pthread_cancel (int ) ;

int netdata_thread_cancel(netdata_thread_t thread) {
    int ret = pthread_cancel(thread);
    if(ret != 0)
        error("cannot cancel thread. pthread_cancel() failed with code %d.", ret);

    return ret;
}
