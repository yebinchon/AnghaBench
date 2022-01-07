
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ RGBLED_NUM ;
 int rgblight_setrgb_range (int,int,int,int ,int) ;

void rgblight_setrgb_master(uint8_t r, uint8_t g, uint8_t b) { rgblight_setrgb_range(r, g, b, 0, (uint8_t)RGBLED_NUM / 2); }
