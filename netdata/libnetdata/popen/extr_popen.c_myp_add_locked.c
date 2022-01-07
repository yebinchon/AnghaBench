
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mypopen {struct mypopen* prev; struct mypopen* next; int pid; } ;
typedef int pid_t ;


 struct mypopen* mallocz (int) ;
 int myp_lock ;
 scalar_t__ myp_tracking ;
 struct mypopen* mypopen_root ;
 int netdata_mutex_unlock (int *) ;

__attribute__((used)) static void myp_add_locked(pid_t pid) {
    struct mypopen *mp;

    if (myp_tracking == 0)
        return;

    mp = mallocz(sizeof(struct mypopen));
    mp->pid = pid;

    mp->next = mypopen_root;
    mp->prev = ((void*)0);
    if (mypopen_root != ((void*)0))
        mypopen_root->prev = mp;
    mypopen_root = mp;
    netdata_mutex_unlock(&myp_lock);
}
