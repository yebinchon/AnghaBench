
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_3__ {int hwndSelf; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ COMBOEX_INFO ;


 int DefWindowProcW (int ,int ,scalar_t__,int ) ;
 int RDW_ALLCHILDREN ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RedrawWindow (int ,int *,int ,int) ;
 int WM_SETREDRAW ;

__attribute__((used)) static LRESULT COMBOEX_SetRedraw(const COMBOEX_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    LRESULT ret = DefWindowProcW( infoPtr->hwndSelf, WM_SETREDRAW, wParam, lParam );
    if (wParam) RedrawWindow( infoPtr->hwndSelf, ((void*)0), 0, RDW_INVALIDATE|RDW_ERASE|RDW_ALLCHILDREN );
    return ret;
}
