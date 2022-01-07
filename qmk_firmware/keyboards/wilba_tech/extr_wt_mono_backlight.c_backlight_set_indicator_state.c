
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int g_indicator_state ;

void backlight_set_indicator_state(uint8_t state)
{
    g_indicator_state = state;
}
