
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int pin_t ;


 int * ENCODERS_PAD_A_RIGHT ;
 int * ENCODERS_PAD_B_RIGHT ;
 size_t NUMBER_OF_ENCODERS ;
 int* encoder_state ;
 int * encoders_pad_a ;
 int * encoders_pad_b ;
 scalar_t__ isLeftHand ;
 int readPin (int ) ;
 int setPinInputHigh (int ) ;
 size_t thatHand ;
 size_t thisHand ;

void encoder_init(void) {
    for (int i = 0; i < NUMBER_OF_ENCODERS; i++) {
        setPinInputHigh(encoders_pad_a[i]);
        setPinInputHigh(encoders_pad_b[i]);

        encoder_state[i] = (readPin(encoders_pad_a[i]) << 0) | (readPin(encoders_pad_b[i]) << 1);
    }





}
