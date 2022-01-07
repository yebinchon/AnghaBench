
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD ;


 int GWL_STYLE ;
 scalar_t__ GetWindowLongW (int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int TRACE (char*,int,int) ;
 int WS_BORDER ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;

__attribute__((used)) static LRESULT COMBOEX_NCCreate (HWND hwnd)
{

    DWORD oldstyle, newstyle;

    oldstyle = (DWORD)GetWindowLongW (hwnd, GWL_STYLE);
    newstyle = oldstyle & ~(WS_VSCROLL | WS_HSCROLL | WS_BORDER);
    if (newstyle != oldstyle) {
 TRACE("req style %08x, resetting style %08x\n",
       oldstyle, newstyle);
 SetWindowLongW (hwnd, GWL_STYLE, newstyle);
    }
    return 1;
}
