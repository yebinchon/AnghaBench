
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_3__ {int hwndSelf; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ HEADER_INFO ;


 int DefWindowProcW (int ,int ,scalar_t__,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;
 int WM_SETREDRAW ;

__attribute__((used)) static LRESULT HEADER_SetRedraw(HEADER_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{


    LRESULT ret;

    ret = DefWindowProcW(infoPtr->hwndSelf, WM_SETREDRAW, wParam, lParam);
    if (wParam)
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
    return ret;
}
