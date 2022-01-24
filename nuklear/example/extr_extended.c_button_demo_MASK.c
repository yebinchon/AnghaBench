#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nk_context {int dummy; } ;
struct media {TYPE_3__* font_14; int /*<<< orphan*/  edit; int /*<<< orphan*/  convert; int /*<<< orphan*/  del; int /*<<< orphan*/  copy; TYPE_2__* font_18; int /*<<< orphan*/  unchecked; int /*<<< orphan*/  checked; int /*<<< orphan*/  rocket; int /*<<< orphan*/  pen; int /*<<< orphan*/  cloud; int /*<<< orphan*/  tools; int /*<<< orphan*/  prev; int /*<<< orphan*/  next; int /*<<< orphan*/  pause; int /*<<< orphan*/  stop; int /*<<< orphan*/  play; TYPE_1__* font_20; } ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  NK_SYMBOL_CIRCLE_OUTLINE ; 
 int /*<<< orphan*/  NK_SYMBOL_CIRCLE_SOLID ; 
 int /*<<< orphan*/  NK_TEXT_CENTERED ; 
 int /*<<< orphan*/  NK_TEXT_LEFT ; 
 int /*<<< orphan*/  NK_TEXT_RIGHT ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_MOVABLE ; 
 int /*<<< orphan*/  NK_WINDOW_NO_SCROLLBAR ; 
 int NK_WINDOW_TITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nk_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nk_context*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nk_context*,char*) ; 
 scalar_t__ FUNC5 (struct nk_context*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nk_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_context*) ; 
 scalar_t__ FUNC8 (struct nk_context*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nk_context*,int,int,int) ; 
 scalar_t__ FUNC12 (struct nk_context*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC14 (struct nk_context*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct nk_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct nk_context*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 (struct nk_context*,struct media*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct nk_context*,struct media*,int) ; 

__attribute__((used)) static void
FUNC23(struct nk_context *ctx, struct media *media)
{
    static int option = 1;
    static int toggle0 = 1;
    static int toggle1 = 0;
    static int toggle2 = 1;

    FUNC18(ctx, &media->font_20->handle);
    FUNC1(ctx, "Button Demo", FUNC17(50,50,255,610),
        NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_TITLE);

    /*------------------------------------------------
     *                  MENU
     *------------------------------------------------*/
    FUNC15(ctx);
    {
        /* toolbar */
        FUNC11(ctx, 40, 40, 4);
        if (FUNC12(ctx, "Music", media->play, FUNC19(110,120)))
        {
            /* settings */
            FUNC10(ctx, 25, 1);
            FUNC14(ctx, media->play, "Play", NK_TEXT_RIGHT);
            FUNC14(ctx, media->stop, "Stop", NK_TEXT_RIGHT);
            FUNC14(ctx, media->pause, "Pause", NK_TEXT_RIGHT);
            FUNC14(ctx, media->next, "Next", NK_TEXT_RIGHT);
            FUNC14(ctx, media->prev, "Prev", NK_TEXT_RIGHT);
            FUNC13(ctx);
        }
        FUNC2(ctx, media->tools);
        FUNC2(ctx, media->cloud);
        FUNC2(ctx, media->pen);
    }
    FUNC16(ctx);

    /*------------------------------------------------
     *                  BUTTON
     *------------------------------------------------*/
    FUNC21(ctx, media, "Push buttons");
    FUNC22(ctx, media, 35);
    if (FUNC4(ctx, "Push me"))
        FUNC0(stdout, "pushed!\n");
    FUNC22(ctx, media, 35);
    if (FUNC3(ctx, media->rocket, "Styled", NK_TEXT_CENTERED))
        FUNC0(stdout, "rocket!\n");

    /*------------------------------------------------
     *                  REPEATER
     *------------------------------------------------*/
    FUNC21(ctx, media, "Repeater");
    FUNC22(ctx, media, 35);
    if (FUNC4(ctx, "Press me"))
        FUNC0(stdout, "pressed!\n");

    /*------------------------------------------------
     *                  TOGGLE
     *------------------------------------------------*/
    FUNC21(ctx, media, "Toggle buttons");
    FUNC22(ctx, media, 35);
    if (FUNC3(ctx, (toggle0) ? media->checked: media->unchecked, "Toggle", NK_TEXT_LEFT))
        toggle0 = !toggle0;

    FUNC22(ctx, media, 35);
    if (FUNC3(ctx, (toggle1) ? media->checked: media->unchecked, "Toggle", NK_TEXT_LEFT))
        toggle1 = !toggle1;

    FUNC22(ctx, media, 35);
    if (FUNC3(ctx, (toggle2) ? media->checked: media->unchecked, "Toggle", NK_TEXT_LEFT))
        toggle2 = !toggle2;

    /*------------------------------------------------
     *                  RADIO
     *------------------------------------------------*/
    FUNC21(ctx, media, "Radio buttons");
    FUNC22(ctx, media, 35);
    if (FUNC5(ctx, (option == 0)?NK_SYMBOL_CIRCLE_OUTLINE:NK_SYMBOL_CIRCLE_SOLID, "Select", NK_TEXT_LEFT))
        option = 0;
    FUNC22(ctx, media, 35);
    if (FUNC5(ctx, (option == 1)?NK_SYMBOL_CIRCLE_OUTLINE:NK_SYMBOL_CIRCLE_SOLID, "Select", NK_TEXT_LEFT))
        option = 1;
    FUNC22(ctx, media, 35);
    if (FUNC5(ctx, (option == 2)?NK_SYMBOL_CIRCLE_OUTLINE:NK_SYMBOL_CIRCLE_SOLID, "Select", NK_TEXT_LEFT))
        option = 2;

    /*------------------------------------------------
     *                  CONTEXTUAL
     *------------------------------------------------*/
    FUNC18(ctx, &media->font_18->handle);
    if (FUNC6(ctx, NK_WINDOW_NO_SCROLLBAR, FUNC19(150, 300), FUNC20(ctx))) {
        FUNC10(ctx, 30, 1);
        if (FUNC8(ctx, media->copy, "Clone", NK_TEXT_RIGHT))
            FUNC0(stdout, "pressed clone!\n");
        if (FUNC8(ctx, media->del, "Delete", NK_TEXT_RIGHT))
            FUNC0(stdout, "pressed delete!\n");
        if (FUNC8(ctx, media->convert, "Convert", NK_TEXT_RIGHT))
            FUNC0(stdout, "pressed convert!\n");
        if (FUNC8(ctx, media->edit, "Edit", NK_TEXT_RIGHT))
            FUNC0(stdout, "pressed edit!\n");
        FUNC7(ctx);
    }
    FUNC18(ctx, &media->font_14->handle);
    FUNC9(ctx);
}