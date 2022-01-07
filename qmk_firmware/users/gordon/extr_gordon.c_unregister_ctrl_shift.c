
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LCTRL ;
 int KC_LSFT ;
 int unregister_code (int ) ;

void unregister_ctrl_shift (void) {
  unregister_code (KC_LSFT);
  unregister_code (KC_LCTRL);
}
