
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ RGBLED_NUM ;
 int rgblight_sethsv_range (int,int,int,int,int) ;

void rgblight_sethsv_slave(uint8_t hue, uint8_t sat, uint8_t val) { rgblight_sethsv_range(hue, sat, val, (uint8_t)RGBLED_NUM / 2, (uint8_t)RGBLED_NUM); }
