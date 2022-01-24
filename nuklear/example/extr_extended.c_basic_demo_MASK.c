#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nk_vec2 {int dummy; } ;
struct nk_panel {int dummy; } ;
struct TYPE_6__ {struct nk_vec2 pos; } ;
struct TYPE_8__ {TYPE_2__ mouse; } ;
struct nk_context {TYPE_4__ input; } ;
struct media {TYPE_3__* font_14; int /*<<< orphan*/ * menu; int /*<<< orphan*/ * images; int /*<<< orphan*/  dir; TYPE_1__* font_20; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  NK_BUTTON_RIGHT ; 
 int /*<<< orphan*/  NK_POPUP_STATIC ; 
 int /*<<< orphan*/  NK_TEXT_CENTERED ; 
 int /*<<< orphan*/  NK_TEXT_LEFT ; 
 int /*<<< orphan*/  NK_TEXT_RIGHT ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_TITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct nk_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nk_context*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nk_context*,char*,int*) ; 
 scalar_t__ FUNC5 (struct nk_context*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nk_context*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_context*) ; 
 scalar_t__ FUNC8 (struct nk_context*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct nk_context*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct nk_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nk_context*,int,int,int) ; 
 scalar_t__ FUNC15 (struct nk_context*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC17 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC18 (struct nk_context*,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct nk_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nk_true ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC23 (struct nk_context*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC24 (struct nk_context*,struct media*,char*) ; 
 int FUNC25 (struct nk_context*,struct nk_vec2,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (struct nk_context*,struct media*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct nk_context*,struct media*,int) ; 

__attribute__((used)) static void
FUNC28(struct nk_context *ctx, struct media *media)
{
    static int image_active;
    static int check0 = 1;
    static int check1 = 0;
    static size_t prog = 80;
    static int selected_item = 0;
    static int selected_image = 3;
    static int selected_icon = 0;
    static const char *items[] = {"Item 0","item 1","item 2"};
    static int piemenu_active = 0;
    static struct nk_vec2 piemenu_pos;

    int i = 0;
    FUNC20(ctx, &media->font_20->handle);
    FUNC1(ctx, "Basic Demo", FUNC19(320, 50, 275, 610),
        NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_TITLE);

    /*------------------------------------------------
     *                  POPUP BUTTON
     *------------------------------------------------*/
    FUNC24(ctx, media, "Popup & Scrollbar & Images");
    FUNC26(ctx, media, 35);
    if (FUNC3(ctx, media->dir, "Images", NK_TEXT_CENTERED))
        image_active = !image_active;

    /*------------------------------------------------
     *                  SELECTED IMAGE
     *------------------------------------------------*/
    FUNC24(ctx, media, "Selected Image");
    FUNC27(ctx, media, 100);
    FUNC11(ctx, media->images[selected_image]);

    /*------------------------------------------------
     *                  IMAGE POPUP
     *------------------------------------------------*/
    if (image_active) {
        struct nk_panel popup;
        if (FUNC15(ctx, NK_POPUP_STATIC, "Image Popup", 0, FUNC19(265, 0, 320, 220))) {
            FUNC14(ctx, 82, 82, 3);
            for (i = 0; i < 9; ++i) {
                if (FUNC2(ctx, media->images[i])) {
                    selected_image = i;
                    image_active = 0;
                    FUNC16(ctx);
                }
            }
            FUNC17(ctx);
        }
    }
    /*------------------------------------------------
     *                  COMBOBOX
     *------------------------------------------------*/
    FUNC24(ctx, media, "Combo box");
    FUNC26(ctx, media, 40);
    if (FUNC6(ctx, items[selected_item], FUNC21(FUNC22(ctx), 200))) {
        FUNC13(ctx, 35, 1);
        for (i = 0; i < 3; ++i)
            if (FUNC9(ctx, items[i], NK_TEXT_LEFT))
                selected_item = i;
        FUNC7(ctx);
    }

    FUNC26(ctx, media, 40);
    if (FUNC5(ctx, items[selected_icon], media->images[selected_icon], FUNC21(FUNC22(ctx), 200))) {
        FUNC13(ctx, 35, 1);
        for (i = 0; i < 3; ++i)
            if (FUNC8(ctx, media->images[i], items[i], NK_TEXT_RIGHT))
                selected_icon = i;
        FUNC7(ctx);
    }

    /*------------------------------------------------
     *                  CHECKBOX
     *------------------------------------------------*/
    FUNC24(ctx, media, "Checkbox");
    FUNC26(ctx, media, 30);
    FUNC4(ctx, "Flag 1", &check0);
    FUNC26(ctx, media, 30);
    FUNC4(ctx, "Flag 2", &check1);

    /*------------------------------------------------
     *                  PROGRESSBAR
     *------------------------------------------------*/
    FUNC24(ctx, media, "Progressbar");
    FUNC26(ctx, media, 35);
    FUNC18(ctx, &prog, 100, nk_true);

    /*------------------------------------------------
     *                  PIEMENU
     *------------------------------------------------*/
    if (FUNC12(&ctx->input, NK_BUTTON_RIGHT,
        FUNC23(ctx),nk_true)){
        piemenu_pos = ctx->input.mouse.pos;
        piemenu_active = 1;
    }

    if (piemenu_active) {
        int ret = FUNC25(ctx, piemenu_pos, 140, &media->menu[0], 6);
        if (ret == -2) piemenu_active = 0;
        if (ret != -1) {
            FUNC0(stdout, "piemenu selected: %d\n", ret);
            piemenu_active = 0;
        }
    }
    FUNC20(ctx, &media->font_14->handle);
    FUNC10(ctx);
}