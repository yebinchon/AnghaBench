
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hFont; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
TREEVIEW_GetFont(const TREEVIEW_INFO *infoPtr)
{
    TRACE("%p\n", infoPtr->hFont);
    return (LRESULT)infoPtr->hFont;
}
