
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_increase_sat_helper (int) ;

void rgblight_increase_sat_noeeprom(void) { rgblight_increase_sat_helper(0); }
