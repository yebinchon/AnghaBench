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
struct media {TYPE_3__* font_14; TYPE_2__* font_18; TYPE_1__* font_20; } ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  NK_EDIT_FIELD ; 
 int /*<<< orphan*/  NK_TEXT_LEFT ; 
 int /*<<< orphan*/  NK_TEXT_RIGHT ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_NO_SCROLLBAR ; 
 int NK_WINDOW_TITLE ; 
 scalar_t__ FUNC0 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*,char*,int*) ; 
 scalar_t__ FUNC2 (struct nk_context*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nk_context*) ; 
 scalar_t__ FUNC4 (struct nk_context*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_context*,int /*<<< orphan*/ ,char*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nk_context*) ; 
 int /*<<< orphan*/  nk_filter_binary ; 
 int /*<<< orphan*/  nk_filter_float ; 
 int /*<<< orphan*/  nk_filter_hex ; 
 int /*<<< orphan*/  FUNC7 (struct nk_context*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nk_context*) ; 

__attribute__((used)) static void
FUNC13(struct nk_context *ctx, struct media *media)
{
    static char text[3][64];
    static int text_len[3];
    static const char *items[] = {"Item 0","item 1","item 2"};
    static int selected_item = 0;
    static int check = 1;

    int i;
    FUNC10(ctx, &media->font_20->handle);
    if (FUNC0(ctx, "Grid Demo", FUNC9(600, 350, 275, 250),
        NK_WINDOW_TITLE|NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|
        NK_WINDOW_NO_SCROLLBAR))
    {
        FUNC10(ctx, &media->font_18->handle);
        FUNC8(ctx, 30, 2);
        FUNC7(ctx, "Floating point:", NK_TEXT_RIGHT);
        FUNC5(ctx, NK_EDIT_FIELD, text[0], &text_len[0], 64, nk_filter_float);
        FUNC7(ctx, "Hexadecimal:", NK_TEXT_RIGHT);
        FUNC5(ctx, NK_EDIT_FIELD, text[1], &text_len[1], 64, nk_filter_hex);
        FUNC7(ctx, "Binary:", NK_TEXT_RIGHT);
        FUNC5(ctx, NK_EDIT_FIELD, text[2], &text_len[2], 64, nk_filter_binary);
        FUNC7(ctx, "Checkbox:", NK_TEXT_RIGHT);
        FUNC1(ctx, "Check me", &check);
        FUNC7(ctx, "Combobox:", NK_TEXT_RIGHT);
        if (FUNC2(ctx, items[selected_item], FUNC11(FUNC12(ctx), 200))) {
            FUNC8(ctx, 25, 1);
            for (i = 0; i < 3; ++i)
                if (FUNC4(ctx, items[i], NK_TEXT_LEFT))
                    selected_item = i;
            FUNC3(ctx);
        }
    }
    FUNC6(ctx);
    FUNC10(ctx, &media->font_14->handle);
}