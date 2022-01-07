
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XGCValues ;
typedef int XColor ;
struct TYPE_2__ {int norm_pixel; int dpy; int wid; } ;
typedef int Pixmap ;
typedef int GC ;
typedef int Cursor ;


 int XCreateGC (int ,int ,unsigned long,int *) ;
 int XCreatePixmap (int ,int ,int,int,int) ;
 int XCreatePixmapCursor (int ,int ,int ,int *,int *,int ,int ) ;
 int XDrawPoint (int ,int ,int ,int ,int ) ;
 int XFreeGC (int ,int ) ;
 TYPE_1__ gui ;

__attribute__((used)) static Cursor
gui_x11_create_blank_mouse()
{
    Pixmap blank_pixmap = XCreatePixmap(gui.dpy, gui.wid, 1, 1, 1);
    GC gc = XCreateGC(gui.dpy, blank_pixmap, (unsigned long)0, (XGCValues*)0);
    XDrawPoint(gui.dpy, blank_pixmap, gc, 0, 0);
    XFreeGC(gui.dpy, gc);
    return XCreatePixmapCursor(gui.dpy, blank_pixmap, blank_pixmap,
     (XColor*)&gui.norm_pixel, (XColor*)&gui.norm_pixel, 0, 0);
}
