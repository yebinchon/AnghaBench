
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int LPWSTR ;
typedef scalar_t__ LONG_PTR ;
typedef int HWND ;
typedef int ATOM ;


 scalar_t__ EqualRect (TYPE_1__*,TYPE_1__*) ;
 int FindWindowExW (int ,int *,int ,int *) ;
 int GWLP_HINSTANCE ;
 int GetClientRect (int ,TYPE_1__*) ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 scalar_t__ HINST_THISCOMPONENT ;
 scalar_t__ MAKEINTATOM (int ) ;
 int SWP_ASYNCWINDOWPOS ;
 int SWP_NOACTIVATE ;
 int SWP_NOOWNERZORDER ;
 int SWP_NOSENDCHANGING ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int) ;
 int get_window_class () ;

__attribute__((used)) static void resize_child_win(HWND parent)
{



    ATOM cls = get_window_class();
    HWND child = FindWindowExW(parent, ((void*)0), (LPWSTR)MAKEINTATOM(cls), ((void*)0));
    if (!child)
        return;

    if (GetWindowLongPtrW(child, GWLP_HINSTANCE) != (LONG_PTR)HINST_THISCOMPONENT)
        return;


    RECT rm, rp;
    if (!GetClientRect(child, &rm))
        return;
    if (!GetClientRect(parent, &rp))
        return;
    if (EqualRect(&rm, &rp))
        return;
    SetWindowPos(child, ((void*)0), 0, 0, rp.right, rp.bottom, SWP_ASYNCWINDOWPOS |
        SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_NOSENDCHANGING);
}
