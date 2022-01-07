
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_step_reverse_helper (int) ;

void rgblight_step_reverse(void) { rgblight_step_reverse_helper(1); }
