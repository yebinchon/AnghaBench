
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int WAIT_MS (int ,int,int) ;
 int WAIT_US (int ,int,int) ;
 int _delay_ms (int) ;
 int clock_hi ;
 int clock_lo ;
 scalar_t__ data_in () ;
 int idle () ;
 scalar_t__ m0110_error ;
 int phex (scalar_t__) ;
 int print (char*) ;

uint8_t m0110_recv(void) {
    uint8_t data = 0;
    m0110_error = 0;

    WAIT_MS(clock_lo, 250, 1);
    for (uint8_t i = 0; i < 8; i++) {
        data <<= 1;
        WAIT_US(clock_lo, 200, 2);
        WAIT_US(clock_hi, 200, 3);
        if (data_in()) {
            data |= 1;
        }
    }
    idle();
    return data;
ERROR:
    print("m0110_recv err: ");
    phex(m0110_error);
    print("\n");
    _delay_ms(500);
    idle();
    return 0xFF;
}
