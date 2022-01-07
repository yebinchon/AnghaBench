
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 int info (char*) ;
 int myp_lock ;
 int myp_tracking ;
 scalar_t__ netdata_mutex_init (int *) ;

void myp_init(void) {
    info("process tracking enabled.");
    myp_tracking = 1;

    if (netdata_mutex_init(&myp_lock) != 0) {
 fatal("myp_init() mutex init failed.");
    }
}
