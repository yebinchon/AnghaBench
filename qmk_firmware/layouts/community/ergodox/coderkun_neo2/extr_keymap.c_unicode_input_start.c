
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LCTL ;
 int KC_LSFT ;
 int NEO_U ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void unicode_input_start (void) {
    register_code(KC_LCTL);
    register_code(KC_LSFT);
    register_code(NEO_U);
    unregister_code(NEO_U);
    unregister_code(KC_LSFT);
    unregister_code(KC_LCTL);
}
