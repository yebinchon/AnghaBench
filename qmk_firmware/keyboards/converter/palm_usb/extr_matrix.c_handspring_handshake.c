
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int get_serial_byte () ;

uint8_t handspring_handshake(void) {


    static uint8_t codeA=0;

    for (uint8_t i=0; i < 5; i++) {
        codeA=get_serial_byte();
        if ( 0xF9 == codeA) {
            if( 0xFB == get_serial_byte()) {
                return 1;
            }
        }
    }
    return 0;
}
