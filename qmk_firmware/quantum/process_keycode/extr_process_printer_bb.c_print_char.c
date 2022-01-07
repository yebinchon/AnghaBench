
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int serial_delay () ;
 int serial_high () ;
 int serial_low () ;
 int serial_output () ;

void print_char(char c) {
    uint8_t b = 8;
    serial_output();
    while (b--) {
        if (c & (1 << b)) {
            serial_high();
        } else {
            serial_low();
        }
        serial_delay();
    }
}
