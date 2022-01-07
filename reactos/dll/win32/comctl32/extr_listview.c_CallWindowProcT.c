
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WNDPROC ;
typedef int UINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int CallWindowProcA (int ,int ,int ,int ,int ) ;
 int CallWindowProcW (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline LRESULT CallWindowProcT(WNDPROC proc, HWND hwnd, UINT uMsg,
                        WPARAM wParam, LPARAM lParam, BOOL isW)
{
    if (isW) return CallWindowProcW(proc, hwnd, uMsg, wParam, lParam);
    else return CallWindowProcA(proc, hwnd, uMsg, wParam, lParam);
}
