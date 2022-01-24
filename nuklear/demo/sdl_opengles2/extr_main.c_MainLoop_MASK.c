#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nk_context {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  MAX_ELEMENT_MEMORY ; 
 int /*<<< orphan*/  MAX_VERTEX_MEMORY ; 
 int /*<<< orphan*/  NK_ANTI_ALIASING_ON ; 
 int /*<<< orphan*/  NK_STATIC ; 
 int /*<<< orphan*/  NK_TEXT_LEFT ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_CLOSABLE ; 
 int NK_WINDOW_MINIMIZABLE ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_SCALABLE ; 
 int NK_WINDOW_TITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ SDL_QUIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC9 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_context*) ; 
 int /*<<< orphan*/  nk_false ; 
 int /*<<< orphan*/  FUNC11 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct nk_context*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct nk_context*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nk_context*,int,int,int) ; 
 scalar_t__ FUNC18 (struct nk_context*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC20 (struct nk_context*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC22 (struct nk_context*) ; 
 scalar_t__ FUNC23 (struct nk_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct nk_context*,char*,int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int,int,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int,int) ; 
 int /*<<< orphan*/  running ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  win ; 

__attribute__((used)) static void
FUNC30(void* loopArg){
    struct nk_context *ctx = (struct nk_context *)loopArg;

    /* Input */
    SDL_Event evt;
    FUNC11(ctx);
    while (FUNC2(&evt)) {
        if (evt.type == SDL_QUIT) running = nk_false;
        FUNC27(&evt);
    }
    FUNC12(ctx);


    /* GUI */
    if (FUNC7(ctx, "Demo", FUNC25(50, 50, 200, 200),
        NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
        NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
    {
        FUNC21(ctx);
        FUNC13(ctx, NK_STATIC, 25, 2);
        FUNC16(ctx, 45);
        if (FUNC18(ctx, "FILE", NK_TEXT_LEFT, FUNC29(120, 200))) {
            FUNC14(ctx, 30, 1);
            FUNC20(ctx, "OPEN", NK_TEXT_LEFT);
            FUNC20(ctx, "CLOSE", NK_TEXT_LEFT);
            FUNC19(ctx);
        }
        FUNC16(ctx, 45);
        if (FUNC18(ctx, "EDIT", NK_TEXT_LEFT, FUNC29(120, 200))) {
            FUNC14(ctx, 30, 1);
            FUNC20(ctx, "COPY", NK_TEXT_LEFT);
            FUNC20(ctx, "CUT", NK_TEXT_LEFT);
            FUNC20(ctx, "PASTE", NK_TEXT_LEFT);
            FUNC19(ctx);
        }
        FUNC15(ctx);
        FUNC22(ctx);

        enum {EASY, HARD};
        static int op = EASY;
        static int property = 20;
        FUNC17(ctx, 30, 80, 1);
        if (FUNC8(ctx, "button"))
            FUNC3(stdout, "button pressed\n");
        FUNC14(ctx, 30, 2);
        if (FUNC23(ctx, "easy", op == EASY)) op = EASY;
        if (FUNC23(ctx, "hard", op == HARD)) op = HARD;
        FUNC14(ctx, 25, 1);
        FUNC24(ctx, "Compression:", 0, &property, 100, 10, 1);
    }
    FUNC10(ctx);

    /* -------------- EXAMPLES ---------------- */
    /*calculator(ctx);*/
    /*overview(ctx);*/
    /*node_editor(ctx);*/
    /* ----------------------------------------- */

    /* Draw */
    {float bg[4];
    int win_width, win_height;
    FUNC9(bg, FUNC26(28,48,62));
    FUNC1(win, &win_width, &win_height);
    FUNC6(0, 0, win_width, win_height);
    FUNC4(GL_COLOR_BUFFER_BIT);
    FUNC5(bg[0], bg[1], bg[2], bg[3]);
    /* IMPORTANT: `nk_sdl_render` modifies some global OpenGL state
     * with blending, scissor, face culling, depth test and viewport and
     * defaults everything back into a default state.
     * Make sure to either a.) save and restore or b.) reset your own state after
     * rendering the UI. */
    FUNC28(NK_ANTI_ALIASING_ON, MAX_VERTEX_MEMORY, MAX_ELEMENT_MEMORY);
    FUNC0(win);}
}