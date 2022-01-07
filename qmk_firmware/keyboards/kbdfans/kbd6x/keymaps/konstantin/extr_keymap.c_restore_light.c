
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int val; int sat; int hue; int raw; } ;
typedef TYPE_1__ rgblight_config_t ;


 int eeconfig_read_rgblight () ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom (int ,int ,int ) ;

__attribute__((used)) static inline void restore_light(void) {
    rgblight_config_t saved = { .raw = eeconfig_read_rgblight() };
    rgblight_sethsv_noeeprom(saved.hue, saved.sat, saved.val);
    rgblight_mode_noeeprom(saved.mode);
}
