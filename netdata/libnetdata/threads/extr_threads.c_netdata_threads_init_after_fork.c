
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_SYSTEM ;
 scalar_t__ attr ;
 int debug (int ,char*,size_t) ;
 size_t default_stacksize ;
 int fatal (char*,size_t,int) ;
 int pthread_attr_setstacksize (scalar_t__,size_t) ;
 size_t wanted_stacksize ;

void netdata_threads_init_after_fork(size_t stacksize) {
    wanted_stacksize = stacksize;
    int i;




    if(attr && default_stacksize < wanted_stacksize && wanted_stacksize > 0) {
        i = pthread_attr_setstacksize(attr, wanted_stacksize);
        if(i != 0)
            fatal("pthread_attr_setstacksize() to %zu bytes, failed with code %d.", wanted_stacksize, i);
        else
            debug(D_SYSTEM, "Successfully set pthread stacksize to %zu bytes", wanted_stacksize);
    }
}
