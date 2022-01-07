
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int writePinHigh (int) ;
 int writePinLow (int) ;

void togg_indicator(uint8_t *state, uint8_t pin) {

    if (*state == 0){
        *state = 1;
        writePinHigh(pin);
    }
    else if (*state == 1){
        *state = 0;
        writePinLow(pin);
    }
}
