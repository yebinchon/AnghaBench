
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct media {TYPE_1__* font_18; } ;
struct TYPE_2__ {int handle; } ;


 int NK_TEXT_LEFT ;
 int nk_label (struct nk_context*,char const*,int ) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_style_set_font (struct nk_context*,int *) ;

__attribute__((used)) static void
ui_header(struct nk_context *ctx, struct media *media, const char *title)
{
    nk_style_set_font(ctx, &media->font_18->handle);
    nk_layout_row_dynamic(ctx, 20, 1);
    nk_label(ctx, title, NK_TEXT_LEFT);
}
