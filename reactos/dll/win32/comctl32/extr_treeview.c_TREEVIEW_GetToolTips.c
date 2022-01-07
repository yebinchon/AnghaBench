
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndToolTip; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 int TRACE (char*) ;

__attribute__((used)) static LRESULT
TREEVIEW_GetToolTips(const TREEVIEW_INFO *infoPtr)
{
    TRACE("\n");
    return (LRESULT)infoPtr->hwndToolTip;
}
