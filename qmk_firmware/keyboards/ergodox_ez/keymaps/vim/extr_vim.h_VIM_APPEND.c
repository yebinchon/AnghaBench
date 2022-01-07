
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSERT_MODE ;
 int KC_RIGHT ;
 int TAP (int ) ;
 int layer_on (int ) ;
 int print (char*) ;

void VIM_APPEND(void) {
  print("\e[31ma\e[0m");
  TAP(KC_RIGHT);
  layer_on(INSERT_MODE);
}
