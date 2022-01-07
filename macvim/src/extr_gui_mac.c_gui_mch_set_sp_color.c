
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_2__ {int red; int green; int blue; } ;


 int Blue (int ) ;
 int Green (int ) ;
 int Red (int ) ;
 TYPE_1__ specialColor ;

void
gui_mch_set_sp_color(guicolor_T color)
{
    specialColor.red = Red(color) * 0x0101;
    specialColor.green = Green(color) * 0x0101;
    specialColor.blue = Blue(color) * 0x0101;
}
