
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMBER_OF_ENCODERS ;
 int* encoder_state ;
 int encoder_update (int,int) ;
 int * encoders_pad_a ;
 int * encoders_pad_b ;
 int readPin (int ) ;
 int thisHand ;

void encoder_read(void) {
    for (int i = 0; i < NUMBER_OF_ENCODERS; i++) {
        encoder_state[i] <<= 2;
        encoder_state[i] |= (readPin(encoders_pad_a[i]) << 0) | (readPin(encoders_pad_b[i]) << 1);



        encoder_update(i, encoder_state[i]);

    }
}
