
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int HWND ;
typedef int HTHEME ;
typedef int DWORD ;


 int GWL_STYLE ;
 int GetClientRect (int ,int *) ;
 int GetThemeBackgroundContentRect (int ,int ,int,int ,int *,int *) ;
 int GetWindowLongW (int ,int ) ;
 int GetWindowTheme (int ) ;
 int InflateRect (int *,int,int) ;
 int PBS_VERTICAL ;
 int PP_BAR ;
 int PP_BARVERT ;

__attribute__((used)) static inline void get_client_rect (HWND hwnd, RECT* rect)
{
    HTHEME theme = GetWindowTheme (hwnd);
    GetClientRect (hwnd, rect);
    if (!theme)
        InflateRect(rect, -1, -1);
    else
    {
        DWORD dwStyle = GetWindowLongW (hwnd, GWL_STYLE);
        int part = (dwStyle & PBS_VERTICAL) ? PP_BARVERT : PP_BAR;
        GetThemeBackgroundContentRect (theme, 0, part, 0, rect, rect);
    }
}
