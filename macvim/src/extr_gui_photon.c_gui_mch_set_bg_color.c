
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guicolor_T ;


 int PgSetFillColor (int ) ;

void
gui_mch_set_bg_color(guicolor_T color)
{
    PgSetFillColor(color);
}
