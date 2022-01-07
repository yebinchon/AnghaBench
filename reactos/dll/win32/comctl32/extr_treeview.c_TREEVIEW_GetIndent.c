
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uIndent; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 int TRACE (char*) ;

__attribute__((used)) static LRESULT
TREEVIEW_GetIndent(const TREEVIEW_INFO *infoPtr)
{
    TRACE("\n");
    return infoPtr->uIndent;
}
