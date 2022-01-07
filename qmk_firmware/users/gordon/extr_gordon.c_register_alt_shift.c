
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LALT ;
 int KC_LSFT ;
 int register_code (int ) ;

void register_alt_shift (void) {
  register_code (KC_LSFT);
  register_code (KC_LALT);
}
