
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ IS_MOD (scalar_t__) ;
 scalar_t__ KC_NO ;
 int do_code16 (scalar_t__,int ) ;
 int register_code (scalar_t__) ;
 int register_mods ;
 int register_weak_mods ;

void register_code16(uint16_t code) {
    if (IS_MOD(code) || code == KC_NO) {
        do_code16(code, register_mods);
    } else {
        do_code16(code, register_weak_mods);
    }
    register_code(code);
}
