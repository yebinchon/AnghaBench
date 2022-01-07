
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_NO ;
 int VIM_LEADER (int ) ;
 int debug_enable ;

void matrix_init_user(void) {
  debug_enable = 1;
  VIM_LEADER(KC_NO);
}
