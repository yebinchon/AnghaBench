
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct media {TYPE_1__* font_22; } ;
struct TYPE_2__ {int handle; } ;


 int NK_DYNAMIC ;
 int nk_layout_row (struct nk_context*,int ,float,int,float const*) ;
 int nk_spacing (struct nk_context*,int) ;
 int nk_style_set_font (struct nk_context*,int *) ;

__attribute__((used)) static void
ui_widget_centered(struct nk_context *ctx, struct media *media, float height)
{
    static const float ratio[] = {0.15f, 0.50f, 0.35f};
    nk_style_set_font(ctx, &media->font_22->handle);
    nk_layout_row(ctx, NK_DYNAMIC, height, 3, ratio);
    nk_spacing(ctx, 1);
}
