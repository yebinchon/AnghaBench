
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_DELETE ;
 int KC_NO ;
 int KC_RIGHT ;
 int TAP (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_JOIN(void) {
  print("\e[31mJ\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_RIGHT);
  TAP(KC_DELETE);
  VIM_LEADER(KC_NO);
}
