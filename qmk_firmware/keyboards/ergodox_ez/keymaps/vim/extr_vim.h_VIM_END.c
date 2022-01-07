
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALT (int ) ;
 int KC_RIGHT ;
 int print (char*) ;

void VIM_END(void) {
  print("\e[31me\e[0m");
  ALT(KC_RIGHT);
}
