
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int D0 ;
 int D1 ;
 int D2 ;
 int biton32 (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

uint32_t layer_state_set_user(uint32_t state)
{

    if (biton32(state) == 1) {
        writePinHigh(D2);
    } else {
        writePinLow(D2);
    }

    if (biton32(state) == 2) {
        writePinHigh(D1);
    } else {
        writePinLow(D1);
    }


    if (biton32(state) == 3) {
        writePinHigh(D0);
    } else {
        writePinLow(D0);
    }

    return state;
}
