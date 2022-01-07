
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_RIGHT ;
 int KC_X ;
 int SHIFT (int ) ;
 int print (char*) ;

void VIM_CUT(void) {
  print("\e[31mx\e[0m");
  SHIFT(KC_RIGHT);
  CMD(KC_X);
}
