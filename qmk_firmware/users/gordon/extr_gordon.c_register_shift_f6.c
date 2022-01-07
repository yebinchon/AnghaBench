
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_F6 ;
 int KC_LSFT ;
 int register_code (int ) ;

void register_shift_f6 (void) {
  register_code (KC_LSFT);
  register_code (KC_F6);
}
