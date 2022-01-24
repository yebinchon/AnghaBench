#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct nk_context {int dummy; } ;
struct TYPE_11__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_12__ {int event_mask; int /*<<< orphan*/  colormap; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; int /*<<< orphan*/  dpy; int /*<<< orphan*/  win; int /*<<< orphan*/  cmap; int /*<<< orphan*/  font; int /*<<< orphan*/  screen; TYPE_6__ attr; int /*<<< orphan*/  wm_delete_window; TYPE_8__ swa; int /*<<< orphan*/  vis; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ XWindow ;
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_2__ XEvent ;

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
 scalar_t__ ClientMessage ; 
 long DTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ExposureMask ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  InputOutput ; 
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
 int /*<<< orphan*/  WINDOW_HEIGHT ; 
 int /*<<< orphan*/  WINDOW_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC27 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC28 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC29 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC30 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct nk_context*,int,int,int) ; 
 scalar_t__ FUNC32 (struct nk_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct nk_context*,char*,int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC34 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC35 (int,int,int) ; 
 scalar_t__ FUNC36 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct nk_context* FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC44 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC45 (long) ; 
 int /*<<< orphan*/  stdout ; 
 long FUNC46 () ; 

int
FUNC47(void)
{
    long dt;
    long started;
    int running = 1;
    XWindow xw;
    struct nk_context *ctx;

    /* X11 */
    FUNC24(&xw, 0, sizeof xw);
    xw.dpy = FUNC16(NULL);
    if (!xw.dpy) FUNC22("Could not open a display; perhaps $DISPLAY is not set?");
    xw.root = FUNC0(xw.dpy);
    xw.screen = FUNC6(xw.dpy);
    xw.vis = FUNC7(xw.dpy, xw.screen);
    xw.cmap = FUNC3(xw.dpy,xw.root,xw.vis,AllocNone);

    xw.swa.colormap = xw.cmap;
    xw.swa.event_mask =
        ExposureMask | KeyPressMask | KeyReleaseMask |
        ButtonPress | ButtonReleaseMask| ButtonMotionMask |
        Button1MotionMask | Button3MotionMask | Button4MotionMask | Button5MotionMask|
        PointerMotionMask | KeymapStateMask;
    xw.win = FUNC4(xw.dpy, xw.root, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0,
        FUNC5(xw.dpy, xw.screen), InputOutput,
        xw.vis, CWEventMask | CWColormap, &xw.swa);

    FUNC19(xw.dpy, xw.win, "X11");
    FUNC14(xw.dpy, xw.win);
    xw.wm_delete_window = FUNC13(xw.dpy, "WM_DELETE_WINDOW", False);
    FUNC18(xw.dpy, xw.win, &xw.wm_delete_window, 1);
    FUNC12(xw.dpy, xw.win, &xw.attr);
    xw.width = (unsigned int)xw.attr.width;
    xw.height = (unsigned int)xw.attr.height;

    /* GUI */
    xw.font = FUNC37(xw.dpy, "fixed");
    ctx = FUNC40(xw.font, xw.dpy, xw.screen, xw.win, xw.width, xw.height);

    #ifdef INCLUDE_STYLE
    /*set_style(ctx, THEME_WHITE);*/
    /*set_style(ctx, THEME_RED);*/
    /*set_style(ctx, THEME_BLUE);*/
    /*set_style(ctx, THEME_DARK);*/
    #endif

    while (running)
    {
        /* Input */
        XEvent evt;
        started = FUNC46();
        FUNC28(ctx);
        while (FUNC17(xw.dpy)) {
            FUNC15(xw.dpy, &evt);
            if (evt.type == ClientMessage) goto cleanup;
            if (FUNC9(&evt, xw.win)) continue;
            FUNC39(xw.dpy, xw.screen, xw.win, &evt);
        }
        FUNC29(ctx);

        /* GUI */
        if (FUNC25(ctx, "Demo", FUNC34(50, 50, 200, 200),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
            NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
        {
            enum {EASY, HARD};
            static int op = EASY;
            static int property = 20;

            FUNC31(ctx, 30, 80, 1);
            if (FUNC26(ctx, "button"))
                FUNC23(stdout, "button pressed\n");
            FUNC30(ctx, 30, 2);
            if (FUNC32(ctx, "easy", op == EASY)) op = EASY;
            if (FUNC32(ctx, "hard", op == HARD)) op = HARD;
            FUNC30(ctx, 25, 1);
            FUNC33(ctx, "Compression:", 0, &property, 100, 10, 1);
        }
        FUNC27(ctx);
        if (FUNC36(ctx, "Demo")) break;

        /* -------------- EXAMPLES ---------------- */
        #ifdef INCLUDE_CALCULATOR
          calculator(ctx);
        #endif
        #ifdef INCLUDE_OVERVIEW
          overview(ctx);
        #endif
        #ifdef INCLUDE_NODE_EDITOR
          node_editor(ctx);
        #endif
        /* ----------------------------------------- */

        /* Draw */
        FUNC1(xw.dpy, xw.win);
        FUNC41(xw.win, FUNC35(30,30,30));
        FUNC10(xw.dpy);

        /* Timing */
        dt = FUNC46() - started;
        if (dt < DTIME)
            FUNC45(DTIME - dt);
    }

cleanup:
    FUNC38(xw.dpy, xw.font);
    FUNC42();
    FUNC20(xw.dpy, xw.win);
    FUNC11(xw.dpy, xw.cmap);
    FUNC8(xw.dpy, xw.win);
    FUNC2(xw.dpy);
    return 0;
}