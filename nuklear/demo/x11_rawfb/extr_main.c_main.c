
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rawfb_context {int ctx; } ;
typedef int rawfb_pl ;
struct TYPE_7__ {int event_mask; int colormap; } ;
struct TYPE_6__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; int dpy; int win; int cmap; int screen; TYPE_4__ swa; int vis; TYPE_3__ attr; int root; } ;
typedef TYPE_1__ XWindow ;
typedef int XEvent ;


 int AllocNone ;
 int Button1MotionMask ;
 int Button3MotionMask ;
 int Button4MotionMask ;
 int Button5MotionMask ;
 int ButtonMotionMask ;
 int ButtonPress ;
 int ButtonReleaseMask ;
 int CWColormap ;
 int CWEventMask ;
 long DTIME ;
 int DefaultRootWindow (int ) ;
 int EnterWindowMask ;
 int ExposureMask ;
 int InputOutput ;
 int KeyPressMask ;
 int KeyReleaseMask ;
 int KeymapStateMask ;
 int LeaveWindowMask ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_CLOSABLE ;
 int NK_WINDOW_MINIMIZABLE ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_TITLE ;
 int PointerMotionMask ;
 int WINDOW_HEIGHT ;
 int WINDOW_WIDTH ;
 scalar_t__ XCheckWindowEvent (int ,int ,int,int *) ;
 int XClearWindow (int ,int ) ;
 int XCloseDisplay (int ) ;
 int XCreateColormap (int ,int ,int ,int ) ;
 int XCreateWindow (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,TYPE_4__*) ;
 int XDefaultDepth (int ,int ) ;
 int XDefaultScreen (int ) ;
 int XDefaultVisual (int ,int ) ;
 int XDestroyWindow (int ,int ) ;
 scalar_t__ XFilterEvent (int *,int ) ;
 int XFlush (int ) ;
 int XFreeColormap (int ,int ) ;
 int XGetWindowAttributes (int ,int ,TYPE_3__*) ;
 int XMapWindow (int ,int ) ;
 int XOpenDisplay (int *) ;
 int XStoreName (int ,int ,char*) ;
 int XUnmapWindow (int ,int ) ;
 int calculator (int *) ;
 int die (char*) ;
 int fprintf (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ nk_begin (int *,char*,int ,int) ;
 scalar_t__ nk_button_label (int *,char*) ;
 int nk_end (int *) ;
 int nk_input_begin (int *) ;
 int nk_input_end (int *) ;
 int nk_layout_row_dynamic (int *,int,int) ;
 int nk_layout_row_static (int *,int,int,int) ;
 scalar_t__ nk_option_label (int *,char*,int) ;
 int nk_property_int (int *,char*,int ,int*,int,int,int) ;
 struct rawfb_context* nk_rawfb_init (void*,unsigned char*,unsigned int,unsigned int,int,int ) ;
 int nk_rawfb_render (struct rawfb_context*,int ,int) ;
 int nk_rawfb_shutdown (struct rawfb_context*) ;
 int nk_rect (int,int,int,int) ;
 int nk_rgb (int,int,int) ;
 scalar_t__ nk_window_is_closed (int *,char*) ;
 int nk_xlib_handle_event (int ,int ,int ,int *,struct rawfb_context*) ;
 int nk_xlib_init (int ,int ,int ,int ,unsigned int,unsigned int,void**,int *) ;
 int nk_xlib_render (int ) ;
 int nk_xlib_shutdown () ;
 int node_editor (int *) ;
 int overview (int *) ;
 int sleep_for (long) ;
 int stdout ;
 long timestamp () ;

int
main(void)
{
    long dt;
    long started;
    int running = 1;
    int status;
    XWindow xw;
    struct rawfb_context *rawfb;
    void *fb = ((void*)0);
    rawfb_pl pl;
    unsigned char tex_scratch[512 * 512];


    memset(&xw, 0, sizeof xw);
    xw.dpy = XOpenDisplay(((void*)0));
    if (!xw.dpy) die("Could not open a display; perhaps $DISPLAY is not set?");

    xw.root = DefaultRootWindow(xw.dpy);
    xw.screen = XDefaultScreen(xw.dpy);
    xw.vis = XDefaultVisual(xw.dpy, xw.screen);
    xw.cmap = XCreateColormap(xw.dpy,xw.root,xw.vis,AllocNone);
    xw.swa.colormap = xw.cmap;
    xw.swa.event_mask =
        ExposureMask | KeyPressMask | KeyReleaseMask |
        ButtonPress | ButtonReleaseMask| ButtonMotionMask |
        Button1MotionMask | Button3MotionMask | Button4MotionMask | Button5MotionMask|
        PointerMotionMask | KeymapStateMask | EnterWindowMask | LeaveWindowMask;
    xw.win = XCreateWindow(xw.dpy, xw.root, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0,
        XDefaultDepth(xw.dpy, xw.screen), InputOutput,
        xw.vis, CWEventMask | CWColormap, &xw.swa);

    XStoreName(xw.dpy, xw.win, "X11");
    XMapWindow(xw.dpy, xw.win);
    XGetWindowAttributes(xw.dpy, xw.win, &xw.attr);
    xw.width = (unsigned int)xw.attr.width;
    xw.height = (unsigned int)xw.attr.height;


    status = nk_xlib_init(xw.dpy, xw.vis, xw.screen, xw.win, xw.width, xw.height, &fb, &pl);
    if (!status || !fb)
        return 0;


    rawfb = nk_rawfb_init(fb, tex_scratch, xw.width, xw.height, xw.width * 4, pl);
    if (!rawfb) running = 0;
    while (running) {

        XEvent evt;
        started = timestamp();
        nk_input_begin(&rawfb->ctx);
        while (XCheckWindowEvent(xw.dpy, xw.win, xw.swa.event_mask, &evt)) {
            if (XFilterEvent(&evt, xw.win)) continue;
            nk_xlib_handle_event(xw.dpy, xw.screen, xw.win, &evt, rawfb);
        }
        nk_input_end(&rawfb->ctx);


        if (nk_begin(&rawfb->ctx, "Demo", nk_rect(50, 50, 200, 200),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|
            NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE)) {
            enum {EASY, HARD};
            static int op = EASY;
            static int property = 20;

            nk_layout_row_static(&rawfb->ctx, 30, 80, 1);
            if (nk_button_label(&rawfb->ctx, "button"))
                fprintf(stdout, "button pressed\n");
            nk_layout_row_dynamic(&rawfb->ctx, 30, 2);
            if (nk_option_label(&rawfb->ctx, "easy", op == EASY)) op = EASY;
            if (nk_option_label(&rawfb->ctx, "hard", op == HARD)) op = HARD;
            nk_layout_row_dynamic(&rawfb->ctx, 25, 1);
            nk_property_int(&rawfb->ctx, "Compression:", 0, &property, 100, 10, 1);
        }
        nk_end(&rawfb->ctx);
        if (nk_window_is_closed(&rawfb->ctx, "Demo")) break;
        nk_rawfb_render(rawfb, nk_rgb(30,30,30), 1);


        XClearWindow(xw.dpy, xw.win);
        nk_xlib_render(xw.win);
        XFlush(xw.dpy);


        dt = timestamp() - started;
        if (dt < DTIME)
            sleep_for(DTIME - dt);
    }

    nk_rawfb_shutdown(rawfb);
    nk_xlib_shutdown();
    XUnmapWindow(xw.dpy, xw.win);
    XFreeColormap(xw.dpy, xw.cmap);
    XDestroyWindow(xw.dpy, xw.win);
    XCloseDisplay(xw.dpy);
    return 0;
}
