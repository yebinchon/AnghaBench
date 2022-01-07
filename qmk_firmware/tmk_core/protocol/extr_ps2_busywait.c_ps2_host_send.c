
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PS2_ERR_NONE ;
 int WAIT (int (*) (),int,int) ;
 int clock_hi () ;
 int clock_lo () ;
 int data_hi () ;
 int data_lo () ;
 int inhibit () ;
 int ps2_error ;
 int ps2_host_recv_response () ;
 int wait_us (int) ;

uint8_t ps2_host_send(uint8_t data) {
    bool parity = 1;
    ps2_error = PS2_ERR_NONE;


    inhibit();
    wait_us(100);


    data_lo();
    clock_hi();
    WAIT(clock_lo, 10000, 10);


    for (uint8_t i = 0; i < 8; i++) {
        wait_us(15);
        if (data & (1 << i)) {
            parity = !parity;
            data_hi();
        } else {
            data_lo();
        }
        WAIT(clock_hi, 50, 2);
        WAIT(clock_lo, 50, 3);
    }


    wait_us(15);
    if (parity) {
        data_hi();
    } else {
        data_lo();
    }
    WAIT(clock_hi, 50, 4);
    WAIT(clock_lo, 50, 5);


    wait_us(15);
    data_hi();


    WAIT(data_lo, 50, 6);
    WAIT(clock_lo, 50, 7);


    WAIT(clock_hi, 50, 8);
    WAIT(data_hi, 50, 9);

    inhibit();
    return ps2_host_recv_response();
ERROR:
    inhibit();
    return 0;
}
