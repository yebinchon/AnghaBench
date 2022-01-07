
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int BOOL ;


 int TVS_FULLROWSELECT ;
 int TVS_HASLINES ;

__attribute__((used)) static BOOL
TREEVIEW_IsFullRowSelect(const TREEVIEW_INFO *infoPtr)
{
    return !(infoPtr->dwStyle & TVS_HASLINES) && (infoPtr->dwStyle & TVS_FULLROWSELECT);
}
