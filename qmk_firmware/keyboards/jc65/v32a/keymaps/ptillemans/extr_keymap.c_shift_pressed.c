
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MOD_MASK_SHIFT ;
 int get_mods () ;

bool shift_pressed(void) {
  return get_mods() & MOD_MASK_SHIFT;
}
