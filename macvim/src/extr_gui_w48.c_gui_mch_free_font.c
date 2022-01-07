
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HFONT ;
typedef scalar_t__ GuiFont ;


 int DeleteObject (int ) ;

void
gui_mch_free_font(GuiFont font)
{
    if (font)
 DeleteObject((HFONT)font);
}
