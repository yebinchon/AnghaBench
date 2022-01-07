
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_LEFT ;
 int KC_NO ;
 int KC_UP ;
 int KC_V ;
 int TAP (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_PUT_BEFORE(void) {
  print("\e[31mP\e[0m");
  VIM_LEADER(KC_NO);
  TAP(KC_UP);
  CMD(KC_LEFT);
  CMD(KC_V);
}
