
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Window ;
struct TYPE_4__ {TYPE_1__* drawarea; } ;
struct TYPE_3__ {int window; } ;


 int GDK_WINDOW_XDISPLAY (int ) ;
 int GDK_WINDOW_XWINDOW (int ) ;
 int XWarpPointer (int ,int ,int ,int ,int ,unsigned int,unsigned int,int,int) ;
 TYPE_2__ gui ;

void
gui_mch_setmouse(int x, int y)
{



    XWarpPointer(GDK_WINDOW_XDISPLAY(gui.drawarea->window),
   (Window)0, GDK_WINDOW_XWINDOW(gui.drawarea->window),
   0, 0, 0U, 0U, x, y);
}
