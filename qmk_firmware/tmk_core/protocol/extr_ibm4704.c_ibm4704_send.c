
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IBM4704_INT_OFF () ;
 int IBM4704_INT_ON () ;
 int WAIT (int (*) (),int,int) ;
 int clock_hi () ;
 int clock_lo () ;
 int data_hi () ;
 int data_lo () ;
 int ibm4704_error ;
 int idle () ;
 int xprintf (char*,int) ;

uint8_t ibm4704_send(uint8_t data) {
    bool parity = 1;
    ibm4704_error = 0;

    IBM4704_INT_OFF();


    idle();
    clock_lo();


    WAIT(data_hi, 300, 0x30);


    for (uint8_t i = 0; i < 8; i++) {
        WAIT(clock_hi, 100, 0x40 + i);
        if (data & (1 << i)) {
            parity = !parity;
            data_hi();
        } else {
            data_lo();
        }
        WAIT(clock_lo, 100, 0x48 + i);
    }


    WAIT(clock_hi, 100, 0x34);
    if (parity) {
        data_hi();
    } else {
        data_lo();
    }
    WAIT(clock_lo, 100, 0x35);


    WAIT(clock_hi, 100, 0x34);
    data_hi();


    WAIT(data_lo, 100, 0x36);

    idle();
    IBM4704_INT_ON();
    return 0;
ERROR:
    idle();
    if (ibm4704_error > 0x30) {
        xprintf("S:%02X ", ibm4704_error);
    }
    IBM4704_INT_ON();
    return -1;
}
