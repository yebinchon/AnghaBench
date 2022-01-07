
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALT (int ) ;
 int KC_LEFT ;
 int print (char*) ;

void VIM_BACK(void) {
  print("\e[31mb\e[0m");
  ALT(KC_LEFT);
}
