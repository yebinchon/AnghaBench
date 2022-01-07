
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ root; } ;
typedef TYPE_1__ avl_tree ;


 int avl_walker (scalar_t__,int (*) (void*,void*),void*) ;

int avl_traverse(avl_tree *tree, int (*callback)(void * , void * ), void *data) {
    if(tree->root)
        return avl_walker(tree->root, callback, data);
    else
        return 0;
}
