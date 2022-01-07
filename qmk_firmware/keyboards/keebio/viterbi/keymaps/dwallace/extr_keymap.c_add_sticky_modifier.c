
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int MOD_BIT (int ) ;
 int add_mods (int ) ;
 int modifier_already_applied ;
 int register_code (int ) ;

void add_sticky_modifier(uint16_t keycode) {
  add_mods(MOD_BIT(keycode));
  register_code(keycode);
  modifier_already_applied = 0;
}
