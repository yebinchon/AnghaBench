
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct TYPE_11__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_12__ {int event_mask; int colormap; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; int dpy; int win; int cmap; int font; int screen; TYPE_6__ attr; int wm_delete_window; TYPE_8__ swa; int vis; int root; } ;
typedef TYPE_1__ XWindow ;
struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_2__ XEvent ;


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
 scalar_t__ ClientMessage ;
 long DTIME ;
 int DefaultRootWindow (int ) ;
 int ExposureMask ;
 int False ;
 int InputOutput ;
 int KeyPressMask ;
 int KeyReleaseMask ;
 int KeymapStateMask ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_CLOSABLE ;
 int NK_WINDOW_MINIMIZABLE ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_SCALABLE ;
 int NK_WINDOW_TITLE ;
 int PointerMotionMask ;
 int WINDOW_HEIGHT ;
 int WINDOW_WIDTH ;
 int XClearWindow (int ,int ) ;
 int XCloseDisplay (int ) ;
 int XCreateColormap (int ,int ,int ,int ) ;
 int XCreateWindow (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,TYPE_8__*) ;
 int XDefaultDepth (int ,int ) ;
 int XDefaultScreen (int ) ;
 int XDefaultVisual (int ,int ) ;
 int XDestroyWindow (int ,int ) ;
 scalar_t__ XFilterEvent (TYPE_2__*,int ) ;
 int XFlush (int ) ;
 int XFreeColormap (int ,int ) ;
 int XGetWindowAttributes (int ,int ,TYPE_6__*) ;
 int XInternAtom (int ,char*,int ) ;
 int XMapWindow (int ,int ) ;
 int XNextEvent (int ,TYPE_2__*) ;
 int XOpenDisplay (int *) ;
 scalar_t__ XPending (int ) ;
 int XSetWMProtocols (int ,int ,int *,int) ;
 int XStoreName (int ,int ,char*) ;
 int XUnmapWindow (int ,int ) ;
 int calculator (struct nk_context*) ;
 int die (char*) ;
 int fprintf (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ nk_begin (struct nk_context*,char*,int ,int) ;
 scalar_t__ nk_button_label (struct nk_context*,char*) ;
 int nk_end (struct nk_context*) ;
 int nk_input_begin (struct nk_context*) ;
 int nk_input_end (struct nk_context*) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_layout_row_static (struct nk_context*,int,int,int) ;
 scalar_t__ nk_option_label (struct nk_context*,char*,int) ;
 int nk_property_int (struct nk_context*,char*,int ,int*,int,int,int) ;
 int nk_rect (int,int,int,int) ;
 int nk_rgb (int,int,int) ;
 scalar_t__ nk_window_is_hidden (struct nk_context*,char*) ;
 int nk_xfont_create (int ,char*) ;
 int nk_xfont_del (int ,int ) ;
 int nk_xlib_handle_event (int ,int ,int ,TYPE_2__*) ;
 struct nk_context* nk_xlib_init (int ,int ,int ,int ,unsigned int,unsigned int) ;
 int nk_xlib_render (int ,int ) ;
 int nk_xlib_shutdown () ;
 int node_editor (struct nk_context*) ;
 int overview (struct nk_context*) ;
 int sleep_for (long) ;
 int stdout ;
 long timestamp () ;

int
main(void)
{
    long dt;
    long started;
    int running = 1;
    XWindow xw;
    struct nk_context *ctx;


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
        PointerMotionMask | KeymapStateMask;
    xw.win = XCreateWindow(xw.dpy, xw.root, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0,
        XDefaultDepth(xw.dpy, xw.screen), InputOutput,
        xw.vis, CWEventMask | CWColormap, &xw.swa);

    XStoreName(xw.dpy, xw.win, "X11");
    XMapWindow(xw.dpy, xw.win);
    xw.wm_delete_window = XInternAtom(xw.dpy, "WM_DELETE_WINDOW", False);
    XSetWMProtocols(xw.dpy, xw.win, &xw.wm_delete_window, 1);
    XGetWindowAttributes(xw.dpy, xw.win, &xw.attr);
    xw.width = (unsigned int)xw.attr.width;
    xw.height = (unsigned int)xw.attr.height;


    xw.font = nk_xfont_create(xw.dpy, "fixed");
    ctx = nk_xlib_init(xw.font, xw.dpy, xw.screen, xw.win, xw.width, xw.height);
    while (running)
    {

        XEvent evt;
        started = timestamp();
        nk_input_begin(ctx);
        while (XPending(xw.dpy)) {
            XNextEvent(xw.dpy, &evt);
            if (evt.type == ClientMessage) goto cleanup;
            if (XFilterEvent(&evt, xw.win)) continue;
            nk_xlib_handle_event(xw.dpy, xw.screen, xw.win, &evt);
        }
        nk_input_end(ctx);


        if (nk_begin(ctx, "Demo", nk_rect(50, 50, 200, 200),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
            NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
        {
            enum {EASY, HARD};
            static int op = EASY;
            static int property = 20;

            nk_layout_row_static(ctx, 30, 80, 1);
            if (nk_button_label(ctx, "button"))
                fprintf(stdout, "button pressed\n");
            nk_layout_row_dynamic(ctx, 30, 2);
            if (nk_option_label(ctx, "easy", op == EASY)) op = EASY;
            if (nk_option_label(ctx, "hard", op == HARD)) op = HARD;
            nk_layout_row_dynamic(ctx, 25, 1);
            nk_property_int(ctx, "Compression:", 0, &property, 100, 10, 1);
        }
        nk_end(ctx);
        if (nk_window_is_hidden(ctx, "Demo")) break;
        XClearWindow(xw.dpy, xw.win);
        nk_xlib_render(xw.win, nk_rgb(30,30,30));
        XFlush(xw.dpy);


        dt = timestamp() - started;
        if (dt < DTIME)
            sleep_for(DTIME - dt);
    }

cleanup:
    nk_xfont_del(xw.dpy, xw.font);
    nk_xlib_shutdown();
    XUnmapWindow(xw.dpy, xw.win);
    XFreeColormap(xw.dpy, xw.cmap);
    XDestroyWindow(xw.dpy, xw.win);
    XCloseDisplay(xw.dpy);
    return 0;
}
