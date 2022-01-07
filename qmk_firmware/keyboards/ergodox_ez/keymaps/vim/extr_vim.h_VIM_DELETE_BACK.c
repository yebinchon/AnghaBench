
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_DEL ;
 int KC_LALT ;
 int KC_LEFT ;
 int KC_LSHIFT ;
 int KC_NO ;
 int PRESS (int ) ;
 int RELEASE (int ) ;
 int SHIFT (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_DELETE_BACK(void) {
  print("\e[31mb\e[0m");
  VIM_LEADER(KC_NO);
  PRESS(KC_LALT);
    SHIFT(KC_LEFT);
    SHIFT(KC_DEL);
  RELEASE(KC_LSHIFT);
}
