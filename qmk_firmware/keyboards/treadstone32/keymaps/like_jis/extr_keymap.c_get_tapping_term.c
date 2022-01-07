
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;




 int TAPPING_LAYER_TERM ;
 int TAPPING_TERM ;

uint16_t get_tapping_term(uint16_t keycode) {
  switch (keycode) {
    case 129:
      return TAPPING_LAYER_TERM;
    case 128:
      return TAPPING_LAYER_TERM;
    default:
      return TAPPING_TERM;
  }
}
