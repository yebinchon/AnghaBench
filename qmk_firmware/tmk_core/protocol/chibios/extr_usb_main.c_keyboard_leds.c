
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int keyboard_led_stats ;

uint8_t keyboard_leds(void) { return (uint8_t)(keyboard_led_stats & 0xFF); }
