
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct vo_x11_state {int mouse_cursor_set; scalar_t__ parent; scalar_t__ rootwin; scalar_t__ window; int * display; int mouse_cursor_visible; scalar_t__ has_focus; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_6__ {int pixel; } ;
typedef TYPE_1__ XColor ;
typedef scalar_t__ Window ;
typedef scalar_t__ Pixmap ;
typedef int Display ;
typedef int Cursor ;
typedef int Colormap ;


 int DefaultColormap (int *,int ) ;
 int DefaultScreen (int *) ;
 scalar_t__ None ;
 int XAllocNamedColor (int *,int ,char*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ XCreateBitmapFromData (int *,scalar_t__,char const*,int,int) ;
 int XCreatePixmapCursor (int *,scalar_t__,scalar_t__,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int XDefineCursor (int *,scalar_t__,int ) ;
 int XFreeColors (int *,int ,int *,int,int ) ;
 int XFreeCursor (int *,int ) ;
 int XFreePixmap (int *,scalar_t__) ;

__attribute__((used)) static void vo_update_cursor(struct vo *vo)
{
    Cursor no_ptr;
    Pixmap bm_no;
    XColor black, dummy;
    Colormap colormap;
    const char bm_no_data[] = {0, 0, 0, 0, 0, 0, 0, 0};
    struct vo_x11_state *x11 = vo->x11;
    Display *disp = x11->display;
    Window win = x11->window;
    bool should_hide = x11->has_focus && !x11->mouse_cursor_visible;

    if (should_hide == x11->mouse_cursor_set)
        return;

    x11->mouse_cursor_set = should_hide;

    if (x11->parent == x11->rootwin || !win)
        return;

    if (x11->mouse_cursor_set) {
        colormap = DefaultColormap(disp, DefaultScreen(disp));
        if (!XAllocNamedColor(disp, colormap, "black", &black, &dummy))
            return;
        bm_no = XCreateBitmapFromData(disp, win, bm_no_data, 8, 8);
        no_ptr = XCreatePixmapCursor(disp, bm_no, bm_no, &black, &black, 0, 0);
        XDefineCursor(disp, win, no_ptr);
        XFreeCursor(disp, no_ptr);
        if (bm_no != None)
            XFreePixmap(disp, bm_no);
        XFreeColors(disp, colormap, &black.pixel, 1, 0);
    } else {
        XDefineCursor(x11->display, x11->window, 0);
    }
}
