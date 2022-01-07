
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_DOWN ;
 int KC_NO ;
 int SHIFT (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_VISUAL_DOWN(void) {
  print("\e[31mdj\e[0m");
  VIM_LEADER(KC_NO);
  SHIFT(KC_DOWN);
}
