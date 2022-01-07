
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL
TREEVIEW_IsChildOf(const TREEVIEW_ITEM *parent, const TREEVIEW_ITEM *child)
{
    do
    {
 child = child->parent;
 if (child == parent) return TRUE;
    } while (child != ((void*)0));

    return FALSE;
}
