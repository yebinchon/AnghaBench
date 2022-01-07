
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int long_u ;
struct TYPE_4__ {int foreground; int background; int function; } ;
typedef TYPE_1__ XGCValues ;
struct TYPE_5__ {int norm_pixel; int back_pixel; int * invert_gc; int dpy; int * back_gc; int * text_gc; } ;


 int GCBackground ;
 int GCForeground ;
 int GCFunction ;
 int GXxor ;
 int XChangeGC (int ,int *,int,TYPE_1__*) ;
 TYPE_2__ gui ;
 int gui_x11_set_back_color () ;

void
gui_mch_new_colors()
{
    long_u gc_mask;
    XGCValues gc_vals;

    gc_mask = GCForeground | GCBackground;
    gc_vals.foreground = gui.norm_pixel;
    gc_vals.background = gui.back_pixel;
    if (gui.text_gc != ((void*)0))
 XChangeGC(gui.dpy, gui.text_gc, gc_mask, &gc_vals);

    gc_vals.foreground = gui.back_pixel;
    gc_vals.background = gui.norm_pixel;
    if (gui.back_gc != ((void*)0))
 XChangeGC(gui.dpy, gui.back_gc, gc_mask, &gc_vals);

    gc_mask |= GCFunction;
    gc_vals.foreground = gui.norm_pixel ^ gui.back_pixel;
    gc_vals.background = gui.norm_pixel ^ gui.back_pixel;
    gc_vals.function = GXxor;
    if (gui.invert_gc != ((void*)0))
 XChangeGC(gui.dpy, gui.invert_gc, gc_mask, &gc_vals);

    gui_x11_set_back_color();
}
