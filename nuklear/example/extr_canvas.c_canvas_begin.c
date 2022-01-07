
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nk_rect {int h; } ;
struct TYPE_3__ {int fixed_background; void* padding; void* spacing; } ;
struct TYPE_4__ {TYPE_1__ window; } ;
struct nk_context {TYPE_2__ style; } ;
struct nk_color {int dummy; } ;
struct nk_canvas {int painter; int window_background; void* item_spacing; void* panel_padding; } ;
typedef int nk_flags ;


 int NK_WINDOW_DYNAMIC ;
 int NK_WINDOW_NO_SCROLLBAR ;
 int nk_begin (struct nk_context*,char*,int ,int) ;
 int nk_layout_row_dynamic (struct nk_context*,int ,int) ;
 int nk_rect (int,int,int,int) ;
 int nk_style_item_color (struct nk_color) ;
 void* nk_vec2 (int ,int ) ;
 int nk_widget (struct nk_rect*,struct nk_context*) ;
 int nk_window_get_canvas (struct nk_context*) ;
 struct nk_rect nk_window_get_content_region (struct nk_context*) ;
 int nk_window_set_bounds (struct nk_context*,char*,int ) ;

__attribute__((used)) static void
canvas_begin(struct nk_context *ctx, struct nk_canvas *canvas, nk_flags flags,
    int x, int y, int width, int height, struct nk_color background_color)
{

    canvas->panel_padding = ctx->style.window.padding;
    canvas->item_spacing = ctx->style.window.spacing;
    canvas->window_background = ctx->style.window.fixed_background;


    ctx->style.window.spacing = nk_vec2(0,0);
    ctx->style.window.padding = nk_vec2(0,0);
    ctx->style.window.fixed_background = nk_style_item_color(background_color);


    flags = flags & ~NK_WINDOW_DYNAMIC;
    nk_window_set_bounds(ctx, "Window", nk_rect(x, y, width, height));
    nk_begin(ctx, "Window", nk_rect(x, y, width, height), NK_WINDOW_NO_SCROLLBAR|flags);


    {struct nk_rect total_space;
    total_space = nk_window_get_content_region(ctx);
    nk_layout_row_dynamic(ctx, total_space.h, 1);
    nk_widget(&total_space, ctx);
    canvas->painter = nk_window_get_canvas(ctx);}
}
