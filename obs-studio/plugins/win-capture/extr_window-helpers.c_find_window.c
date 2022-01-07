
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
typedef enum window_priority { ____Placeholder_window_priority } window_priority ;
typedef int * HWND ;


 int * first_window (int,int **,int*) ;
 int * next_window (int *,int,int **,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int window_rating (int *,int,char const*,char const*,char const*,int) ;

HWND find_window(enum window_search_mode mode, enum window_priority priority,
   const char *class, const char *title, const char *exe)
{
 HWND parent;
 bool use_findwindowex = 0;

 HWND window = first_window(mode, &parent, &use_findwindowex);
 HWND best_window = ((void*)0);
 int best_rating = 0x7FFFFFFF;

 if (!class)
  return ((void*)0);

 bool uwp_window = strcmp(class, "Windows.UI.Core.CoreWindow") == 0;

 while (window) {
  int rating = window_rating(window, priority, class, title, exe,
        uwp_window);
  if (rating < best_rating) {
   best_rating = rating;
   best_window = window;
   if (rating == 0)
    break;
  }

  window = next_window(window, mode, &parent, use_findwindowex);
 }

 return best_window;
}
