
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Window ;
struct TYPE_2__ {scalar_t__ wid; int dpy; } ;


 scalar_t__ XQueryPointer (int ,scalar_t__,int *,int *,int*,int*,int*,int*,unsigned int*) ;
 TYPE_1__ gui ;

void
gui_mch_getmouse(int *x, int *y)
{
    int rootx, rooty, winx, winy;
    Window root, child;
    unsigned int mask;

    if (gui.wid && XQueryPointer(gui.dpy, gui.wid, &root, &child,
      &rootx, &rooty, &winx, &winy, &mask)) {
 *x = winx;
 *y = winy;
    } else {
 *x = -1;
 *y = -1;
    }
}
