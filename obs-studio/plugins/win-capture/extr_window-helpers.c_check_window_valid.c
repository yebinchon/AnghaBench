
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
struct TYPE_3__ {scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int DWORD ;


 int EXCLUDE_MINIMIZED ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_1__*) ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 scalar_t__ IsIconic (int ) ;
 int IsWindowVisible (int ) ;
 int WS_CHILD ;
 int WS_EX_TOOLWINDOW ;

__attribute__((used)) static bool check_window_valid(HWND window, enum window_search_mode mode)
{
 DWORD styles, ex_styles;
 RECT rect;

 if (!IsWindowVisible(window) ||
     (mode == EXCLUDE_MINIMIZED && IsIconic(window)))
  return 0;

 GetClientRect(window, &rect);
 styles = (DWORD)GetWindowLongPtr(window, GWL_STYLE);
 ex_styles = (DWORD)GetWindowLongPtr(window, GWL_EXSTYLE);

 if (ex_styles & WS_EX_TOOLWINDOW)
  return 0;
 if (styles & WS_CHILD)
  return 0;
 if (mode == EXCLUDE_MINIMIZED && (rect.bottom == 0 || rect.right == 0))
  return 0;

 return 1;
}
