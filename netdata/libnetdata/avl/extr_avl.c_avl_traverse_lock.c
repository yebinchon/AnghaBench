
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int avl_tree; } ;
typedef TYPE_1__ avl_tree_lock ;


 int avl_read_lock (TYPE_1__*) ;
 int avl_traverse (int *,int (*) (void*,void*),void*) ;
 int avl_unlock (TYPE_1__*) ;

int avl_traverse_lock(avl_tree_lock *tree, int (*callback)(void * , void * ), void *data) {
    int ret;
    avl_read_lock(tree);
    ret = avl_traverse(&tree->avl_tree, callback, data);
    avl_unlock(tree);
    return ret;
}
