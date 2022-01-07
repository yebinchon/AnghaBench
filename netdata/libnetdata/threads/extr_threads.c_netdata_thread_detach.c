
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int error (char*,int) ;
 int pthread_detach (int ) ;

int netdata_thread_detach(pthread_t thread) {
    int ret = pthread_detach(thread);
    if(ret != 0)
        error("cannot detach thread. pthread_detach() failed with code %d.", ret);

    return ret;
}
