
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int D1 ;
 int biton32 (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

uint32_t layer_state_set_user(uint32_t state) {
    switch (biton32(state)) {
      case 1:
        writePinHigh(D1);
        break;
      default:
        writePinLow(D1);
        break;
      }
    return state;
}
