
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int B3 ;
 int biton32 (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

uint32_t layer_state_set_user(uint32_t state)
{
    if (biton32(state) == 1) {
    writePinHigh(B3);
 } else {
  writePinLow(B3);
    }
    return state;
}
