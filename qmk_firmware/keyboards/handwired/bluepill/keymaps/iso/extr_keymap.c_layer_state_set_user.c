
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GPIOA ;


 int biton32 (int ) ;
 int palClearPad (int ,int) ;
 int palSetPad (int ,int) ;

uint32_t layer_state_set_user(uint32_t state) {
  switch (biton32(state)) {
  case 129:
    palSetPad(GPIOA, 0);
    palClearPad(GPIOA, 1);
    break;
  case 128:
    palClearPad(GPIOA, 0);
    palClearPad(GPIOA, 1);
    break;
  default:
    palClearPad(GPIOA, 0);
    palSetPad(GPIOA, 1);
    break;
    }
  return state;
}
