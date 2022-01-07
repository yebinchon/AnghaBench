
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int get_serial_byte () ;

uint8_t palm_handshake(void) {




    static uint8_t codeA=0;

    for (uint8_t i=0; i < 5; i++) {
        codeA=get_serial_byte();
        if ( 0xFA == codeA) {
            if( 0xFD == get_serial_byte()) {
                return 1;
            }
        }
    }
    return 0;
}
