
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mypopen {scalar_t__ pid; struct mypopen* next; TYPE_1__* prev; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {struct mypopen* next; } ;


 int error (char*,scalar_t__) ;
 int freez (struct mypopen*) ;
 int myp_lock ;
 scalar_t__ myp_tracking ;
 struct mypopen* mypopen_root ;
 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;

__attribute__((used)) static void myp_del(pid_t pid) {
    struct mypopen *mp;

    if (myp_tracking == 0)
        return;

    netdata_mutex_lock(&myp_lock);
    for (mp = mypopen_root; mp != ((void*)0); mp = mp->next) {
        if (mp->pid == pid) {
            if (mp->next != ((void*)0))
                mp->next->prev = mp->prev;
            if (mp->prev != ((void*)0))
                mp->prev->next = mp->next;
            if (mypopen_root == mp)
                mypopen_root = mp->next;
            freez(mp);
            break;
        }
    }

    if (mp == ((void*)0))
        error("Cannot find pid %d.", pid);

    netdata_mutex_unlock(&myp_lock);
}
