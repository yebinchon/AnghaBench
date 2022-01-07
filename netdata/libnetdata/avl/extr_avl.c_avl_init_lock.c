
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rwlock; int mutex; int avl_tree; } ;
typedef TYPE_1__ avl_tree_lock ;


 int avl_init (int *,int (*) (void*,void*)) ;
 int fatal (char*,int) ;
 int netdata_mutex_init (int *,int *) ;
 int netdata_rwlock_init (int *) ;

void avl_init_lock(avl_tree_lock *tree, int (*compar)(void * , void * )) {
    avl_init(&tree->avl_tree, compar);


    int lock;




    lock = netdata_rwlock_init(&tree->rwlock);


    if(lock != 0)
        fatal("Failed to initialize AVL mutex/rwlock, error: %d", lock);


}
