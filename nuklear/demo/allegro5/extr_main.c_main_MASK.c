#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nk_context {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  NkAllegro5Font ;
typedef  int /*<<< orphan*/  ALLEGRO_TIMEOUT ;
typedef  int /*<<< orphan*/  ALLEGRO_EVENT_QUEUE ;
typedef  TYPE_1__ ALLEGRO_EVENT ;
typedef  int /*<<< orphan*/  ALLEGRO_DISPLAY ;

/* Variables and functions */
 scalar_t__ ALLEGRO_EVENT_DISPLAY_CLOSE ; 
 int ALLEGRO_OPENGL ; 
 int ALLEGRO_RESIZABLE ; 
 int /*<<< orphan*/  ALLEGRO_SAMPLES ; 
 int /*<<< orphan*/  ALLEGRO_SAMPLE_BUFFERS ; 
 int /*<<< orphan*/  ALLEGRO_SUGGEST ; 
 int ALLEGRO_WINDOWED ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_CLOSABLE ; 
 int NK_WINDOW_MINIMIZABLE ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_SCALABLE ; 
 int NK_WINDOW_TITLE ; 
 int /*<<< orphan*/  WINDOW_HEIGHT ; 
 int /*<<< orphan*/  WINDOW_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 struct nk_context* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ FUNC28 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC29 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC30 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC31 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC32 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC33 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC34 (struct nk_context*,int,int,int) ; 
 scalar_t__ FUNC35 (struct nk_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC36 (struct nk_context*,char*,int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC37 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC38 (struct nk_context*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC39(void)
{
    /* Platform */
    ALLEGRO_DISPLAY *display = NULL;
    ALLEGRO_EVENT_QUEUE *event_queue = NULL;

    if (!FUNC10()) {
        FUNC21(stdout, "failed to initialize allegro5!\n");
        FUNC20(1);
    }

    FUNC13();
    FUNC16(150);
    FUNC12();

    FUNC17(ALLEGRO_WINDOWED|ALLEGRO_RESIZABLE|ALLEGRO_OPENGL);
    FUNC18(ALLEGRO_SAMPLE_BUFFERS, 1, ALLEGRO_SUGGEST);
    FUNC18(ALLEGRO_SAMPLES, 8, ALLEGRO_SUGGEST);
    display = FUNC1(WINDOW_WIDTH, WINDOW_HEIGHT);
    if (!display) {
        FUNC21(stdout, "failed to create display!\n");
        FUNC20(1);
    }

    event_queue = FUNC2();
    if (!event_queue) {
        FUNC21(stdout, "failed to create event_queue!\n");
        FUNC3(display);
        FUNC20(1);
    }

    FUNC15(event_queue, FUNC6(display));
    FUNC15(event_queue, FUNC8());
    FUNC15(event_queue, FUNC7());

    NkAllegro5Font *font;
    font = FUNC22("../../../extra_font/Roboto-Regular.ttf", 12, 0);
    struct nk_context *ctx;

    ctx = FUNC25(font, display, WINDOW_WIDTH, WINDOW_HEIGHT);

    /* style.c */
    /*set_style(ctx, THEME_WHITE);*/
    /*set_style(ctx, THEME_RED);*/
    /*set_style(ctx, THEME_BLUE);*/
    /*set_style(ctx, THEME_DARK);*/

    while(1)
    {
        ALLEGRO_EVENT ev;
        ALLEGRO_TIMEOUT timeout;
        FUNC11(&timeout, 0.06);

        bool get_event = FUNC19(event_queue, &ev, &timeout);

        if (get_event && ev.type == ALLEGRO_EVENT_DISPLAY_CLOSE) {
            break;
        }

        /* Very Important: Always do nk_input_begin / nk_input_end even if
           there are no events, otherwise internal nuklear state gets messed up */
        FUNC31(ctx);
        if (get_event) {
            while (get_event) {
                FUNC24(&ev);
                get_event = FUNC9(event_queue, &ev);
            }
        }
        FUNC32(ctx);

        /* GUI */
        if (FUNC28(ctx, "Demo", FUNC37(50, 50, 200, 200),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
            NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
        {
            enum {EASY, HARD};
            static int op = EASY;
            static int property = 20;

            FUNC34(ctx, 30, 80, 1);
            if (FUNC29(ctx, "button"))
                FUNC21(stdout, "button pressed\n");
            FUNC33(ctx, 30, 2);
            if (FUNC35(ctx, "easy", op == EASY)) op = EASY;
            if (FUNC35(ctx, "hard", op == HARD)) op = HARD;
            FUNC33(ctx, 22, 1);
            FUNC36(ctx, "Compression:", 0, &property, 100, 10, 1);
        }
        FUNC30(ctx);

        /* -------------- EXAMPLES ---------------- */
        /*calculator(ctx);*/
        FUNC38(ctx);
        /*node_editor(ctx);*/
        /* ----------------------------------------- */

        /* Draw */
        FUNC0(FUNC14(19, 43, 81));
        /* IMPORTANT: `nk_allegro5_render` changes the target backbuffer
        to the display set at initialization and does not restore it.
        Change it if you want to draw somewhere else. */
        FUNC26();
        FUNC5();
    }

    FUNC23(font);
    FUNC27();
    FUNC3(display);
    FUNC4(event_queue);
    return 0;
}