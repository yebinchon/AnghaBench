
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
typedef int add_window_cb ;
typedef scalar_t__ HWND ;


 int add_window (int *,scalar_t__,int ) ;
 scalar_t__ first_window (int,scalar_t__*,int*) ;
 scalar_t__ next_window (scalar_t__,int,scalar_t__*,int) ;

void fill_window_list(obs_property_t *p, enum window_search_mode mode,
        add_window_cb callback)
{
 HWND parent;
 bool use_findwindowex = 0;

 HWND window = first_window(mode, &parent, &use_findwindowex);

 while (window) {
  add_window(p, window, callback);
  window = next_window(window, mode, &parent, use_findwindowex);
 }
}
