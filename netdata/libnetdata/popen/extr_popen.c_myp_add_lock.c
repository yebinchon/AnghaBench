
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int myp_lock ;
 scalar_t__ myp_tracking ;
 int netdata_mutex_lock (int *) ;

__attribute__((used)) static void myp_add_lock(void) {
    if (myp_tracking == 0)
        return;

    netdata_mutex_lock(&myp_lock);
}
