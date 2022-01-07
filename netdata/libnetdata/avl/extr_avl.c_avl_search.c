
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* compar ) (TYPE_2__*,TYPE_2__*) ;TYPE_2__* root; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_9__ {struct TYPE_9__** avl_link; } ;
typedef TYPE_2__ avl ;


 int stub1 (TYPE_2__*,TYPE_2__*) ;

avl *avl_search(avl_tree *tree, avl *item) {
    avl *p;



    for (p = tree->root; p != ((void*)0); ) {
        int cmp = tree->compar(item, p);

        if (cmp < 0)
            p = p->avl_link[0];
        else if (cmp > 0)
            p = p->avl_link[1];
        else
            return p;
    }

    return ((void*)0);
}
