
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_LEFT ;
 int KC_NO ;
 int KC_X ;
 int SHIFT (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_DELETE_LEFT(void) {
  print("\e[31mh\e[0m");
  VIM_LEADER(KC_NO);
  SHIFT(KC_LEFT);
  CMD(KC_X);
}
