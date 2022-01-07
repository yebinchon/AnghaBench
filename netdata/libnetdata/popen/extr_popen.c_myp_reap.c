
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mypopen {scalar_t__ pid; struct mypopen* next; } ;
typedef scalar_t__ pid_t ;


 int myp_lock ;
 scalar_t__ myp_tracking ;
 struct mypopen* mypopen_root ;
 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;

int myp_reap(pid_t pid) {
    struct mypopen *mp;

    if (myp_tracking == 0)
        return 0;

    netdata_mutex_lock(&myp_lock);
    for (mp = mypopen_root; mp != ((void*)0); mp = mp->next) {
        if (mp->pid == pid) {
            netdata_mutex_unlock(&myp_lock);
            return 0;
        }
    }
    netdata_mutex_unlock(&myp_lock);

    return 1;
}
