
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rwlock; int mutex; } ;
typedef TYPE_1__ avl_tree_lock ;


 int netdata_mutex_lock (int *) ;
 int netdata_rwlock_rdlock (int *) ;

void avl_read_lock(avl_tree_lock *t) {




    netdata_rwlock_rdlock(&t->rwlock);


}
