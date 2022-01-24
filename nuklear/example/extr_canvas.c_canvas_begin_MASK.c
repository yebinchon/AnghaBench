#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nk_rect {int /*<<< orphan*/  h; } ;
struct TYPE_3__ {int /*<<< orphan*/  fixed_background; void* padding; void* spacing; } ;
struct TYPE_4__ {TYPE_1__ window; } ;
struct nk_context {TYPE_2__ style; } ;
struct nk_color {int dummy; } ;
struct nk_canvas {int /*<<< orphan*/  painter; int /*<<< orphan*/  window_background; void* item_spacing; void* panel_padding; } ;
typedef  int nk_flags ;

/* Variables and functions */
 int NK_WINDOW_DYNAMIC ; 
 int NK_WINDOW_NO_SCROLLBAR ; 
 int /*<<< orphan*/  FUNC0 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nk_color) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_rect*,struct nk_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct nk_context*) ; 
 struct nk_rect FUNC7 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct nk_context*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct nk_context *ctx, struct nk_canvas *canvas, nk_flags flags,
    int x, int y, int width, int height, struct nk_color background_color)
{
    /* save style properties which will be overwritten */
    canvas->panel_padding = ctx->style.window.padding;
    canvas->item_spacing = ctx->style.window.spacing;
    canvas->window_background = ctx->style.window.fixed_background;

    /* use the complete window space and set background */
    ctx->style.window.spacing = FUNC4(0,0);
    ctx->style.window.padding = FUNC4(0,0);
    ctx->style.window.fixed_background = FUNC3(background_color);

    /* create/update window and set position + size */
    flags = flags & ~NK_WINDOW_DYNAMIC;
    FUNC8(ctx, "Window", FUNC2(x, y, width, height));
    FUNC0(ctx, "Window", FUNC2(x, y, width, height), NK_WINDOW_NO_SCROLLBAR|flags);

    /* allocate the complete window space for drawing */
    {struct nk_rect total_space;
    total_space = FUNC7(ctx);
    FUNC1(ctx, total_space.h, 1);
    FUNC5(&total_space, ctx);
    canvas->painter = FUNC6(ctx);}
}