
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int font_can_bold; int text_context; int * norm_font; } ;
typedef int PangoFontDescription ;
typedef int PangoFont ;


 int FALSE ;
 int PANGO_WEIGHT_BOLD ;
 int g_object_unref (int *) ;
 TYPE_1__ gui ;
 int * pango_context_load_font (int ,int *) ;
 int * pango_font_description_copy_static (int *) ;
 int pango_font_description_free (int *) ;
 int pango_font_description_set_weight (int *,int ) ;

__attribute__((used)) static void
get_styled_font_variants(void)
{
    PangoFontDescription *bold_font_desc;
    PangoFont *plain_font;
    PangoFont *bold_font;

    gui.font_can_bold = FALSE;

    plain_font = pango_context_load_font(gui.text_context, gui.norm_font);

    if (plain_font == ((void*)0))
 return;

    bold_font_desc = pango_font_description_copy_static(gui.norm_font);
    pango_font_description_set_weight(bold_font_desc, PANGO_WEIGHT_BOLD);

    bold_font = pango_context_load_font(gui.text_context, bold_font_desc);





    if (bold_font != ((void*)0))
    {
 gui.font_can_bold = (bold_font != plain_font);
 g_object_unref(bold_font);
    }

    pango_font_description_free(bold_font_desc);
    g_object_unref(plain_font);
}
