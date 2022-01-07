
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 scalar_t__ g_any_key_hit ;
 scalar_t__* g_key_hit ;
 int map_row_column_to_led (size_t,size_t,size_t*) ;

void backlight_set_key_hit(uint8_t row, uint8_t column)
{
    uint8_t led;
    map_row_column_to_led(row,column,&led);
    g_key_hit[led] = 0;

    g_any_key_hit = 0;
}
