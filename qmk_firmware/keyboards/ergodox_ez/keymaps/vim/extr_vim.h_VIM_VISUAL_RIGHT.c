
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_NO ;
 int KC_RIGHT ;
 int SHIFT (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_VISUAL_RIGHT(void) {
  print("\e[31mvl\e[0m");
  VIM_LEADER(KC_NO);
  SHIFT(KC_RIGHT);
}
