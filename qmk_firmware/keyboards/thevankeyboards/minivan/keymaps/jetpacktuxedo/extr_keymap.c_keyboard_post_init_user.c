
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LED_TYPE ;


 scalar_t__ RGBLIGHT_EFFECT_BREATHING ;
 int * led ;
 int rgblight_mode_noeeprom (scalar_t__) ;
 int rgblight_set () ;
 int rgblight_set_effect_range (int,int) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;
 int setrgb (int ,int ,int ,int *) ;

void keyboard_post_init_user(void) {
}
