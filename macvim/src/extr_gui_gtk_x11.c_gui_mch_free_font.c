
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GuiFont ;


 scalar_t__ NOFONT ;
 int pango_font_description_free (scalar_t__) ;

void
gui_mch_free_font(GuiFont font)
{
    if (font != NOFONT)
 pango_font_description_free(font);
}
