
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ uIndent; int root; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 scalar_t__ MINIMUM_INDENT ;
 int TRACE (char*) ;
 int TREEVIEW_Invalidate (TYPE_1__*,int *) ;
 int TREEVIEW_UpdateScrollBars (TYPE_1__*) ;
 int TREEVIEW_UpdateSubTree (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT
TREEVIEW_SetIndent(TREEVIEW_INFO *infoPtr, UINT newIndent)
{
    TRACE("\n");

    if (newIndent < MINIMUM_INDENT)
 newIndent = MINIMUM_INDENT;

    if (infoPtr->uIndent != newIndent)
    {
 infoPtr->uIndent = newIndent;
 TREEVIEW_UpdateSubTree(infoPtr, infoPtr->root);
 TREEVIEW_UpdateScrollBars(infoPtr);
 TREEVIEW_Invalidate(infoPtr, ((void*)0));
    }

    return 0;
}
