
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* root; } ;
struct TYPE_8__ {int iLevel; int * prevSibling; int * parent; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;


 int TREEVIEW_VerifyChildren (TYPE_2__*,TYPE_1__*) ;
 int TREEVIEW_VerifyItemCommon (TYPE_2__*,TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static inline void
TREEVIEW_VerifyRoot(TREEVIEW_INFO *infoPtr)
{
    TREEVIEW_ITEM *root = infoPtr->root;

    assert(root != ((void*)0));
    assert(root->iLevel == -1);
    assert(root->parent == ((void*)0));
    assert(root->prevSibling == ((void*)0));

    TREEVIEW_VerifyItemCommon(infoPtr, root);

    TREEVIEW_VerifyChildren(infoPtr, root);
}
