
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; int h; } ;


 int RGBLIGHT_MODE_STATIC_LIGHT ;
 TYPE_1__ modern_dolch_red ;
 int rgblight_get_val () ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom (int ,int ,int ) ;

__attribute__((used)) static inline void fn_light(void) {
    rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_LIGHT);
    rgblight_sethsv_noeeprom(modern_dolch_red.h, modern_dolch_red.s, rgblight_get_val());
}
