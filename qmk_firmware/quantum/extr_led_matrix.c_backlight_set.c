
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int led_matrix_set_value (int ) ;

void backlight_set(uint8_t val) { led_matrix_set_value(val); }
