
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nk_vec2 {int dummy; } ;
struct nk_panel {int dummy; } ;
struct TYPE_6__ {struct nk_vec2 pos; } ;
struct TYPE_8__ {TYPE_2__ mouse; } ;
struct nk_context {TYPE_4__ input; } ;
struct media {TYPE_3__* font_14; int * menu; int * images; int dir; TYPE_1__* font_20; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_5__ {int handle; } ;


 int NK_BUTTON_RIGHT ;
 int NK_POPUP_STATIC ;
 int NK_TEXT_CENTERED ;
 int NK_TEXT_LEFT ;
 int NK_TEXT_RIGHT ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_TITLE ;
 int fprintf (int ,char*,int) ;
 int nk_begin (struct nk_context*,char*,int ,int) ;
 scalar_t__ nk_button_image (struct nk_context*,int ) ;
 scalar_t__ nk_button_image_label (struct nk_context*,int ,char*,int ) ;
 int nk_checkbox_label (struct nk_context*,char*,int*) ;
 scalar_t__ nk_combo_begin_image_label (struct nk_context*,char const*,int ,int ) ;
 scalar_t__ nk_combo_begin_label (struct nk_context*,char const*,int ) ;
 int nk_combo_end (struct nk_context*) ;
 scalar_t__ nk_combo_item_image_label (struct nk_context*,int ,char const*,int ) ;
 scalar_t__ nk_combo_item_label (struct nk_context*,char const*,int ) ;
 int nk_end (struct nk_context*) ;
 int nk_image (struct nk_context*,int ) ;
 scalar_t__ nk_input_is_mouse_click_down_in_rect (TYPE_4__*,int ,int ,int ) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_layout_row_static (struct nk_context*,int,int,int) ;
 scalar_t__ nk_popup_begin (struct nk_context*,int ,char*,int ,int ) ;
 int nk_popup_close (struct nk_context*) ;
 int nk_popup_end (struct nk_context*) ;
 int nk_progress (struct nk_context*,size_t*,int,int ) ;
 int nk_rect (int,int,int,int) ;
 int nk_style_set_font (struct nk_context*,int *) ;
 int nk_true ;
 int nk_vec2 (int ,int) ;
 int nk_widget_width (struct nk_context*) ;
 int nk_window_get_bounds (struct nk_context*) ;
 int stdout ;
 int ui_header (struct nk_context*,struct media*,char*) ;
 int ui_piemenu (struct nk_context*,struct nk_vec2,int,int *,int) ;
 int ui_widget (struct nk_context*,struct media*,int) ;
 int ui_widget_centered (struct nk_context*,struct media*,int) ;

__attribute__((used)) static void
basic_demo(struct nk_context *ctx, struct media *media)
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
    nk_style_set_font(ctx, &media->font_20->handle);
    nk_begin(ctx, "Basic Demo", nk_rect(320, 50, 275, 610),
        NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_TITLE);




    ui_header(ctx, media, "Popup & Scrollbar & Images");
    ui_widget(ctx, media, 35);
    if (nk_button_image_label(ctx, media->dir, "Images", NK_TEXT_CENTERED))
        image_active = !image_active;




    ui_header(ctx, media, "Selected Image");
    ui_widget_centered(ctx, media, 100);
    nk_image(ctx, media->images[selected_image]);




    if (image_active) {
        struct nk_panel popup;
        if (nk_popup_begin(ctx, NK_POPUP_STATIC, "Image Popup", 0, nk_rect(265, 0, 320, 220))) {
            nk_layout_row_static(ctx, 82, 82, 3);
            for (i = 0; i < 9; ++i) {
                if (nk_button_image(ctx, media->images[i])) {
                    selected_image = i;
                    image_active = 0;
                    nk_popup_close(ctx);
                }
            }
            nk_popup_end(ctx);
        }
    }



    ui_header(ctx, media, "Combo box");
    ui_widget(ctx, media, 40);
    if (nk_combo_begin_label(ctx, items[selected_item], nk_vec2(nk_widget_width(ctx), 200))) {
        nk_layout_row_dynamic(ctx, 35, 1);
        for (i = 0; i < 3; ++i)
            if (nk_combo_item_label(ctx, items[i], NK_TEXT_LEFT))
                selected_item = i;
        nk_combo_end(ctx);
    }

    ui_widget(ctx, media, 40);
    if (nk_combo_begin_image_label(ctx, items[selected_icon], media->images[selected_icon], nk_vec2(nk_widget_width(ctx), 200))) {
        nk_layout_row_dynamic(ctx, 35, 1);
        for (i = 0; i < 3; ++i)
            if (nk_combo_item_image_label(ctx, media->images[i], items[i], NK_TEXT_RIGHT))
                selected_icon = i;
        nk_combo_end(ctx);
    }




    ui_header(ctx, media, "Checkbox");
    ui_widget(ctx, media, 30);
    nk_checkbox_label(ctx, "Flag 1", &check0);
    ui_widget(ctx, media, 30);
    nk_checkbox_label(ctx, "Flag 2", &check1);




    ui_header(ctx, media, "Progressbar");
    ui_widget(ctx, media, 35);
    nk_progress(ctx, &prog, 100, nk_true);




    if (nk_input_is_mouse_click_down_in_rect(&ctx->input, NK_BUTTON_RIGHT,
        nk_window_get_bounds(ctx),nk_true)){
        piemenu_pos = ctx->input.mouse.pos;
        piemenu_active = 1;
    }

    if (piemenu_active) {
        int ret = ui_piemenu(ctx, piemenu_pos, 140, &media->menu[0], 6);
        if (ret == -2) piemenu_active = 0;
        if (ret != -1) {
            fprintf(stdout, "piemenu selected: %d\n", ret);
            piemenu_active = 0;
        }
    }
    nk_style_set_font(ctx, &media->font_14->handle);
    nk_end(ctx);
}
