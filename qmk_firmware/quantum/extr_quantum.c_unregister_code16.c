
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ IS_MOD (scalar_t__) ;
 scalar_t__ KC_NO ;
 int do_code16 (scalar_t__,int ) ;
 int unregister_code (scalar_t__) ;
 int unregister_mods ;
 int unregister_weak_mods ;

void unregister_code16(uint16_t code) {
    unregister_code(code);
    if (IS_MOD(code) || code == KC_NO) {
        do_code16(code, unregister_mods);
    } else {
        do_code16(code, unregister_weak_mods);
    }
}
