
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;




 int LowerSwitch (int *,int*,int) ;


 int RaiseSwitch (int *,int*,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  static bool l_lower = 0;
  static bool r_lower = 0;

  static bool l_raise = 0;
  static bool r_raise = 0;

  switch (keycode) {


    case 131 : return LowerSwitch( record, &l_lower, r_lower ); break;
    case 129 : return LowerSwitch( record, &r_lower, l_lower ); break;
    case 130 : return RaiseSwitch( record, &l_raise, r_raise ); break;
    case 128 : return RaiseSwitch( record, &r_raise, l_raise ); break;

    default: break;

  }
  return 1;
}
