
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int keyrecord_t ;


 scalar_t__ ADJUST ;
 scalar_t__ DYN_REC_STOP ;
 scalar_t__ FKEYGRV ;
 scalar_t__ FKEYS ;
 int process_record_dynamic_macro (scalar_t__,int *) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  uint16_t macro_kc = keycode;
  if (keycode == FKEYS || keycode == ADJUST || keycode == FKEYGRV ){
    macro_kc = DYN_REC_STOP;
  }
  if (!process_record_dynamic_macro(macro_kc, record)) {
    return 0;
  }

  return 1;
}
