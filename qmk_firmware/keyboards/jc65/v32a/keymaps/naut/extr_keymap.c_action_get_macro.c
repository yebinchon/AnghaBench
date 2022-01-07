
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int D (int ) ;
 int DOWN ;
 int END ;
 int LCTL ;
 int LEFT ;
 int LGUI ;
 int LSFT ;
 int const* MACRO (int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int RGHT ;
 int SPC ;
 int T (int) ;
 int U (int ) ;
 int UP ;
 int rgblight_setrgb (int,int,int) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
    if (record->event.pressed) {
        switch(id) {
            case 0:
                return MACRO(D(LGUI), D(LSFT), T(3), U(LSFT), U(LGUI), END);
            case 1:
                return MACRO(D(LGUI), D(LSFT), T(4), U(LSFT), U(LGUI), END);
            case 2:
                return MACRO(D(LCTL), D(LSFT), D(LGUI), T(3), D(LCTL), D(LSFT), D(LGUI), END);
            case 3:
                return MACRO(D(LCTL), D(LSFT), D(LGUI), T(4), D(LCTL), D(LSFT), D(LGUI), END);
            case 4:
                return MACRO(D(LCTL), T(UP), U(LCTL), END);
            case 5:
                return MACRO(D(LCTL), T(DOWN), U(LCTL), END);
            case 6:
                return MACRO(D(LGUI), T(SPC), U(LGUI), END);
            case 7:
                return MACRO(D(LCTL), T(LEFT), U(LCTL), END);
            case 8:
                return MACRO(D(LCTL), T(RGHT), U(LCTL), END);
            case 9:
                rgblight_setrgb(0xff, 0xff, 0xff);
                break;
        }
    }
    return MACRO_NONE;
}
