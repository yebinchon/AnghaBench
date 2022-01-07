
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ PS2_ERR_NONE ;
 scalar_t__ PS2_ERR_PARITY ;
 scalar_t__ PS2_ERR_STARTBIT3 ;
 int WAIT (int ,int,int) ;
 int clock_hi ;
 int clock_lo ;
 int data_hi ;
 int data_in () ;
 int data_lo ;
 int idle () ;
 int inhibit () ;
 scalar_t__ ps2_error ;
 int xprintf (char*,scalar_t__) ;

uint8_t ps2_host_recv(void) {
    uint8_t data = 0;
    bool parity = 1;
    ps2_error = PS2_ERR_NONE;


    idle();


    WAIT(clock_lo, 100, 1);
    WAIT(data_lo, 1, 2);
    WAIT(clock_hi, 50, 3);


    for (uint8_t i = 0; i < 8; i++) {
        WAIT(clock_lo, 50, 4);
        if (data_in()) {
            parity = !parity;
            data |= (1 << i);
        }
        WAIT(clock_hi, 50, 5);
    }


    WAIT(clock_lo, 50, 6);
    if (data_in() != parity) {
        ps2_error = PS2_ERR_PARITY;
        goto ERROR;
    }
    WAIT(clock_hi, 50, 7);


    WAIT(clock_lo, 50, 8);
    WAIT(data_hi, 1, 9);
    WAIT(clock_hi, 50, 10);

    inhibit();
    return data;
ERROR:
    if (ps2_error > PS2_ERR_STARTBIT3) {
        xprintf("x%02X\n", ps2_error);
    }
    inhibit();
    return 0;
}
