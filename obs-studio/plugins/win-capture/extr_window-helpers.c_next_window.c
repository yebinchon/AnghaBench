
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
typedef int * HWND ;


 int * FindWindowEx (int ,int *,int *,int *) ;
 int GW_HWNDNEXT ;
 int GetDesktopWindow () ;
 int * GetNextWindow (int *,int ) ;
 scalar_t__ check_window_valid (int *,int) ;
 int * get_uwp_actual_window (int *) ;
 scalar_t__ is_uwp_window (int *) ;

__attribute__((used)) static HWND next_window(HWND window, enum window_search_mode mode, HWND *parent,
   bool use_findwindowex)
{
 if (*parent) {
  window = *parent;
  *parent = ((void*)0);
 }

 while (1) {
  if (use_findwindowex)
   window = FindWindowEx(GetDesktopWindow(), window, ((void*)0),
           ((void*)0));
  else
   window = GetNextWindow(window, GW_HWNDNEXT);

  if (!window || check_window_valid(window, mode))
   break;
 }

 if (is_uwp_window(window)) {
  HWND child = get_uwp_actual_window(window);
  if (child) {
   *parent = window;
   return child;
  }
 }

 return window;
}
