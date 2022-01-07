
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WNDPROC ;
typedef int UINT ;
typedef int LRESULT ;
typedef int LPCWSTR ;
typedef int LPARAM ;
typedef size_t INT_PTR ;
typedef int HWND ;


 int CallWindowProcW (int ,int ,int ,int ,int ) ;
 int GetPropW (int ,int ) ;
 scalar_t__ MAKEINTATOM (int ) ;
 int atSubclassProp ;
 int * originalProcs ;

LRESULT THEMING_CallOriginalClass (HWND wnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    INT_PTR subclass = (INT_PTR)GetPropW (wnd, (LPCWSTR)MAKEINTATOM(atSubclassProp));
    WNDPROC oldProc = originalProcs[subclass];
    return CallWindowProcW (oldProc, wnd, msg, wParam, lParam);
}
