
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct media {TYPE_3__* font_14; TYPE_2__* font_18; TYPE_1__* font_20; } ;
struct TYPE_6__ {int handle; } ;
struct TYPE_5__ {int handle; } ;
struct TYPE_4__ {int handle; } ;


 int NK_EDIT_FIELD ;
 int NK_TEXT_LEFT ;
 int NK_TEXT_RIGHT ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_NO_SCROLLBAR ;
 int NK_WINDOW_TITLE ;
 scalar_t__ nk_begin (struct nk_context*,char*,int ,int) ;
 int nk_checkbox_label (struct nk_context*,char*,int*) ;
 scalar_t__ nk_combo_begin_label (struct nk_context*,char const*,int ) ;
 int nk_combo_end (struct nk_context*) ;
 scalar_t__ nk_combo_item_label (struct nk_context*,char const*,int ) ;
 int nk_edit_string (struct nk_context*,int ,char*,int*,int,int ) ;
 int nk_end (struct nk_context*) ;
 int nk_filter_binary ;
 int nk_filter_float ;
 int nk_filter_hex ;
 int nk_label (struct nk_context*,char*,int ) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_rect (int,int,int,int) ;
 int nk_style_set_font (struct nk_context*,int *) ;
 int nk_vec2 (int ,int) ;
 int nk_widget_width (struct nk_context*) ;

__attribute__((used)) static void
grid_demo(struct nk_context *ctx, struct media *media)
{
    static char text[3][64];
    static int text_len[3];
    static const char *items[] = {"Item 0","item 1","item 2"};
    static int selected_item = 0;
    static int check = 1;

    int i;
    nk_style_set_font(ctx, &media->font_20->handle);
    if (nk_begin(ctx, "Grid Demo", nk_rect(600, 350, 275, 250),
        NK_WINDOW_TITLE|NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|
        NK_WINDOW_NO_SCROLLBAR))
    {
        nk_style_set_font(ctx, &media->font_18->handle);
        nk_layout_row_dynamic(ctx, 30, 2);
        nk_label(ctx, "Floating point:", NK_TEXT_RIGHT);
        nk_edit_string(ctx, NK_EDIT_FIELD, text[0], &text_len[0], 64, nk_filter_float);
        nk_label(ctx, "Hexadecimal:", NK_TEXT_RIGHT);
        nk_edit_string(ctx, NK_EDIT_FIELD, text[1], &text_len[1], 64, nk_filter_hex);
        nk_label(ctx, "Binary:", NK_TEXT_RIGHT);
        nk_edit_string(ctx, NK_EDIT_FIELD, text[2], &text_len[2], 64, nk_filter_binary);
        nk_label(ctx, "Checkbox:", NK_TEXT_RIGHT);
        nk_checkbox_label(ctx, "Check me", &check);
        nk_label(ctx, "Combobox:", NK_TEXT_RIGHT);
        if (nk_combo_begin_label(ctx, items[selected_item], nk_vec2(nk_widget_width(ctx), 200))) {
            nk_layout_row_dynamic(ctx, 25, 1);
            for (i = 0; i < 3; ++i)
                if (nk_combo_item_label(ctx, items[i], NK_TEXT_LEFT))
                    selected_item = i;
            nk_combo_end(ctx);
        }
    }
    nk_end(ctx);
    nk_style_set_font(ctx, &media->font_14->handle);
}
