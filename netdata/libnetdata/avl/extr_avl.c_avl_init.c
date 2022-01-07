
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* compar ) (void*,void*) ;int * root; } ;
typedef TYPE_1__ avl_tree ;



void avl_init(avl_tree *tree, int (*compar)(void * , void * )) {
    tree->root = ((void*)0);
    tree->compar = compar;
}
