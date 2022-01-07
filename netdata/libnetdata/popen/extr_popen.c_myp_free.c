
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mypopen {struct mypopen* next; } ;


 int freez (struct mypopen*) ;
 int myp_lock ;
 scalar_t__ myp_tracking ;
 struct mypopen* mypopen_root ;
 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;

void myp_free(void) {
    struct mypopen *mp, *next;

    if (myp_tracking == 0)
        return;

    netdata_mutex_lock(&myp_lock);
    for (mp = mypopen_root; mp != ((void*)0); mp = next) {
        next = mp->next;
        freez(mp);
    }

    mypopen_root = ((void*)0);
    myp_tracking = 0;
    netdata_mutex_unlock(&myp_lock);
}
