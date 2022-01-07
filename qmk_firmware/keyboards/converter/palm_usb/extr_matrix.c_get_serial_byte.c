
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int debug (char*) ;
 int debug_hex (scalar_t__) ;
 scalar_t__ serial_recv () ;

uint8_t get_serial_byte(void) {
    static uint8_t code;
    while(1) {
        code = serial_recv();
        if (code) {
            debug_hex(code); debug(" ");
            return code;
        }
    }
}
