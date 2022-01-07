
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int B0 ;
 int biton32 (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

uint32_t layer_state_set_user(uint32_t state)
{

    switch (biton32(state)) {
    case 0:
        writePinHigh(B0);
        break;
    case 1:
        writePinLow(B0);
        break;
 }
    return state;
}
