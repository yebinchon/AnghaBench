
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LEFT ;
 int KC_NO ;
 int TAP (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_LEFT(void) {
  print("\e[31mh\e[0m");
  VIM_LEADER(KC_NO);
  TAP(KC_LEFT);
}
