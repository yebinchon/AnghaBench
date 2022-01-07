
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int itemHeight; } ;
typedef TYPE_1__* LPMEASUREITEMSTRUCT ;
typedef scalar_t__ LPARAM ;
typedef int LONG ;


 int FD31_GetFldrHeight () ;
 int TRUE ;

__attribute__((used)) static LONG FD31_WMMeasureItem(LPARAM lParam)
{
    LPMEASUREITEMSTRUCT lpmeasure;

    lpmeasure = (LPMEASUREITEMSTRUCT)lParam;
    lpmeasure->itemHeight = FD31_GetFldrHeight();
    return TRUE;
}
