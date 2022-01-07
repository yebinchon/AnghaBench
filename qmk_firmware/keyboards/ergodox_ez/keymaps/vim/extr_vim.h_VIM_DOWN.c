
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_DOWN ;
 int TAP (int ) ;
 int print (char*) ;

void VIM_DOWN(void) {
  print("\e[31mj\e[0m");
  TAP(KC_DOWN);
}
