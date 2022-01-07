
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int HWND ;


 int AdjustWindowRect (int *,int ,int ) ;
 int GWL_STYLE ;
 int GetWindowLongPtrW (int ,int ) ;

__attribute__((used)) static void add_window_borders(HWND hwnd, RECT *rc)
{
    AdjustWindowRect(rc, GetWindowLongPtrW(hwnd, GWL_STYLE), 0);
}
