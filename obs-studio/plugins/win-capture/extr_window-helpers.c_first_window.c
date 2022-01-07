
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
typedef int * HWND ;


 int * FindWindowEx (int ,int *,int *,int *) ;
 int GW_CHILD ;
 int GetDesktopWindow () ;
 int * GetWindow (int ,int ) ;
 int check_window_valid (int *,int) ;
 int * get_uwp_actual_window (int *) ;
 scalar_t__ is_uwp_window (int *) ;
 int * next_window (int *,int,int **,int) ;

__attribute__((used)) static HWND first_window(enum window_search_mode mode, HWND *parent,
    bool *use_findwindowex)
{
 HWND window = FindWindowEx(GetDesktopWindow(), ((void*)0), ((void*)0), ((void*)0));

 if (!window) {
  *use_findwindowex = 0;
  window = GetWindow(GetDesktopWindow(), GW_CHILD);
 } else {
  *use_findwindowex = 1;
 }

 *parent = ((void*)0);

 if (!check_window_valid(window, mode)) {
  window = next_window(window, mode, parent, *use_findwindowex);

  if (!window && *use_findwindowex) {
   *use_findwindowex = 0;

   window = GetWindow(GetDesktopWindow(), GW_CHILD);
   if (!check_window_valid(window, mode))
    window = next_window(window, mode, parent,
           *use_findwindowex);
  }
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
