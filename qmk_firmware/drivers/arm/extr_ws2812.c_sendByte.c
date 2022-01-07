
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RGB_DI_PIN ;
 int T0H ;
 int T0L ;
 int T1H ;
 int T1L ;
 int wait_ns (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void sendByte(uint8_t byte) {

    for (unsigned char bit = 0; bit < 8; bit++) {
        bool is_one = byte & (1 << (7 - bit));

        if (is_one) {

            writePinHigh(RGB_DI_PIN);
            wait_ns(T1H);
            writePinLow(RGB_DI_PIN);
            wait_ns(T1L);
        } else {

            writePinHigh(RGB_DI_PIN);
            wait_ns(T0H);
            writePinLow(RGB_DI_PIN);
            wait_ns(T0L);
        }
    }
}
