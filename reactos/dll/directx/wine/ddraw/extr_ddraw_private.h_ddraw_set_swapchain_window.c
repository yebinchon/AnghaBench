
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddraw {int * swapchain_window; } ;
typedef int * HWND ;


 int * GetDesktopWindow () ;

__attribute__((used)) static inline void ddraw_set_swapchain_window(struct ddraw *ddraw, HWND window)
{
    if (window == GetDesktopWindow())
        window = ((void*)0);
    ddraw->swapchain_window = window;
}
