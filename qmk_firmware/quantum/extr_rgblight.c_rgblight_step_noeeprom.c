
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_step_helper (int) ;

void rgblight_step_noeeprom(void) { rgblight_step_helper(0); }
