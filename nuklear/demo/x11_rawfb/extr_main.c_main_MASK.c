#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rawfb_context {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  rawfb_pl ;
struct TYPE_7__ {int event_mask; int /*<<< orphan*/  colormap; } ;
struct TYPE_6__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; int /*<<< orphan*/  dpy; int /*<<< orphan*/  win; int /*<<< orphan*/  cmap; int /*<<< orphan*/  screen; TYPE_4__ swa; int /*<<< orphan*/  vis; TYPE_3__ attr; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ XWindow ;
typedef  int /*<<< orphan*/  XEvent ;

/* Variables and functions */
 int /*<<< orphan*/  AllocNone ; 
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EnterWindowMask ; 
 int ExposureMask ; 
 int /*<<< orphan*/  InputOutput ; 
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
 int /*<<< orphan*/  WINDOW_HEIGHT ; 
 int /*<<< orphan*/  WINDOW_WIDTH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*,int,int,int) ; 
 struct rawfb_context* FUNC31 (void*,unsigned char*,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct rawfb_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (struct rawfb_context*) ; 
 int /*<<< orphan*/  FUNC34 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC35 (int,int,int) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rawfb_context*) ; 
 int FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (long) ; 
 int /*<<< orphan*/  stdout ; 
 long FUNC44 () ; 

int
FUNC45(void)
{
    long dt;
    long started;
    int running = 1;
    int status;
    XWindow xw;
    struct rawfb_context *rawfb;
    void *fb = NULL;
    rawfb_pl pl;
    unsigned char tex_scratch[512 * 512];

    /* X11 */
    FUNC21(&xw, 0, sizeof xw);
    xw.dpy = FUNC15(NULL);
    if (!xw.dpy) FUNC19("Could not open a display; perhaps $DISPLAY is not set?");

    xw.root = FUNC0(xw.dpy);
    xw.screen = FUNC7(xw.dpy);
    xw.vis = FUNC8(xw.dpy, xw.screen);
    xw.cmap = FUNC4(xw.dpy,xw.root,xw.vis,AllocNone);
    xw.swa.colormap = xw.cmap;
    xw.swa.event_mask =
        ExposureMask | KeyPressMask | KeyReleaseMask |
        ButtonPress | ButtonReleaseMask| ButtonMotionMask |
        Button1MotionMask | Button3MotionMask | Button4MotionMask | Button5MotionMask|
        PointerMotionMask | KeymapStateMask | EnterWindowMask | LeaveWindowMask;
    xw.win = FUNC5(xw.dpy, xw.root, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0,
        FUNC6(xw.dpy, xw.screen), InputOutput,
        xw.vis, CWEventMask | CWColormap, &xw.swa);

    FUNC16(xw.dpy, xw.win, "X11");
    FUNC14(xw.dpy, xw.win);
    FUNC13(xw.dpy, xw.win, &xw.attr);
    xw.width = (unsigned int)xw.attr.width;
    xw.height = (unsigned int)xw.attr.height;

    /* Framebuffer emulator */
    status = FUNC38(xw.dpy, xw.vis, xw.screen, xw.win, xw.width, xw.height, &fb, &pl);
    if (!status || !fb)
        return 0;

    /* GUI */
    rawfb = FUNC31(fb, tex_scratch, xw.width, xw.height, xw.width * 4, pl);
    if (!rawfb) running = 0;

    #ifdef INCLUDE_STYLE
    /*set_style(&rawfb->ctx, THEME_WHITE);*/
    /*set_style(&rawfb->ctx, THEME_RED);*/
    /*set_style(&rawfb->ctx, THEME_BLUE);*/
    /*set_style(&rawfb->ctx, THEME_DARK);*/
    #endif

    while (running) {
        /* Input */
        XEvent evt;
        started = FUNC44();
        FUNC25(&rawfb->ctx);
        while (FUNC1(xw.dpy, xw.win, xw.swa.event_mask, &evt)) {
            if (FUNC10(&evt, xw.win)) continue;
            FUNC37(xw.dpy, xw.screen, xw.win, &evt, rawfb);
        }
        FUNC26(&rawfb->ctx);

        /* GUI */
        if (FUNC22(&rawfb->ctx, "Demo", FUNC34(50, 50, 200, 200),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|
            NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE)) {
            enum {EASY, HARD};
            static int op = EASY;
            static int property = 20;

            FUNC28(&rawfb->ctx, 30, 80, 1);
            if (FUNC23(&rawfb->ctx, "button"))
                FUNC20(stdout, "button pressed\n");
            FUNC27(&rawfb->ctx, 30, 2);
            if (FUNC29(&rawfb->ctx, "easy", op == EASY)) op = EASY;
            if (FUNC29(&rawfb->ctx, "hard", op == HARD)) op = HARD;
            FUNC27(&rawfb->ctx, 25, 1);
            FUNC30(&rawfb->ctx, "Compression:", 0, &property, 100, 10, 1);
        }
        FUNC24(&rawfb->ctx);
        if (FUNC36(&rawfb->ctx, "Demo")) break;

        /* -------------- EXAMPLES ---------------- */
        #ifdef INCLUDE_CALCULATOR
          calculator(&rawfb->ctx);
        #endif
        #ifdef INCLUDE_OVERVIEW
          overview(&rawfb->ctx);
        #endif
        #ifdef INCLUDE_NODE_EDITOR
          node_editor(&rawfb->ctx);
        #endif
        /* ----------------------------------------- */

        /* Draw framebuffer */
        FUNC32(rawfb, FUNC35(30,30,30), 1);

        /* Emulate framebuffer */
        FUNC2(xw.dpy, xw.win);
        FUNC39(xw.win);
        FUNC11(xw.dpy);

        /* Timing */
        dt = FUNC44() - started;
        if (dt < DTIME)
            FUNC43(DTIME - dt);
    }

    FUNC33(rawfb);
    FUNC40();
    FUNC17(xw.dpy, xw.win);
    FUNC12(xw.dpy, xw.cmap);
    FUNC9(xw.dpy, xw.win);
    FUNC3(xw.dpy);
    return 0;
}