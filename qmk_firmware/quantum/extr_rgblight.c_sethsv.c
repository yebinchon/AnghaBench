
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int LED_TYPE ;


 scalar_t__ RGBLIGHT_LIMIT_VAL ;
 int sethsv_raw (scalar_t__,scalar_t__,scalar_t__,int *) ;

void sethsv(uint8_t hue, uint8_t sat, uint8_t val, LED_TYPE *led1) { sethsv_raw(hue, sat, val > RGBLIGHT_LIMIT_VAL ? RGBLIGHT_LIMIT_VAL : val, led1); }
