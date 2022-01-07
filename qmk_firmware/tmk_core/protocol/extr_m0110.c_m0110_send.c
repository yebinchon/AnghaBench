
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int WAIT_MS (int ,int,int) ;
 int WAIT_US (int ,int,int) ;
 int _delay_ms (int) ;
 int _delay_us (int) ;
 int clock_hi ;
 int clock_lo ;
 int data_hi () ;
 int data_lo () ;
 int idle () ;
 scalar_t__ m0110_error ;
 int phex (scalar_t__) ;
 int print (char*) ;
 int request () ;

uint8_t m0110_send(uint8_t data) {
    m0110_error = 0;

    request();
    WAIT_MS(clock_lo, 250, 1);
    for (uint8_t bit = 0x80; bit; bit >>= 1) {
        WAIT_US(clock_lo, 250, 3);
        if (data & bit) {
            data_hi();
        } else {
            data_lo();
        }
        WAIT_US(clock_hi, 200, 4);
    }
    _delay_us(100);
    idle();
    return 1;
ERROR:
    print("m0110_send err: ");
    phex(m0110_error);
    print("\n");
    _delay_ms(500);
    idle();
    return 0;
}
