
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int avl_tree; } ;
typedef TYPE_1__ avl_tree_lock ;
typedef int avl ;


 int * avl_remove (int *,int *) ;
 int avl_unlock (TYPE_1__*) ;
 int avl_write_lock (TYPE_1__*) ;

avl * avl_remove_lock(avl_tree_lock *tree, avl *item) {
    avl_write_lock(tree);
    avl *ret = avl_remove(&tree->avl_tree, item);
    avl_unlock(tree);
    return ret;
}
