
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;


 int D_OPTIONS ;
 int attr ;
 int callocz (int,int) ;
 int debug (int ,char*,size_t) ;
 size_t default_stacksize ;
 int fatal (char*,int) ;
 int pthread_attr_getstacksize (int ,size_t*) ;
 int pthread_attr_init (int ) ;

size_t netdata_threads_init(void) {
    int i;




    attr = callocz(1, sizeof(pthread_attr_t));
    i = pthread_attr_init(attr);
    if(i != 0)
        fatal("pthread_attr_init() failed with code %d.", i);

    i = pthread_attr_getstacksize(attr, &default_stacksize);
    if(i != 0)
        fatal("pthread_attr_getstacksize() failed with code %d.", i);
    else
        debug(D_OPTIONS, "initial pthread stack size is %zu bytes", default_stacksize);

    return default_stacksize;
}
