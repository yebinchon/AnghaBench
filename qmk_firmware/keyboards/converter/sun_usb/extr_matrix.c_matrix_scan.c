
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COL (int) ;
 int MATRIX_ROWS ;
 size_t ROW (int) ;
 int _delay_ms (int) ;
 int debug (char*) ;
 int debug_hex (int) ;
 int host_keyboard_leds () ;
 int led_set (int ) ;
 int* matrix ;
 scalar_t__ matrix_is_on (size_t,int) ;
 int matrix_scan_quantum () ;
 int print (char*) ;
 int serial_recv () ;
 int xprintf (char*,int) ;

uint8_t matrix_scan(void)
{
    uint8_t code;
    code = serial_recv();
    if (!code) return 0;

    debug_hex(code); debug(" ");

    switch (code) {
        case 0xFF:
            print("reset: ");
            _delay_ms(500);
            code = serial_recv();
            xprintf("%02X\n", code);
            if (code == 0x04) {

                led_set(host_keyboard_leds());
            }
            return 0;
        case 0xFE:
            print("layout: ");
            _delay_ms(500);
            xprintf("%02X\n", serial_recv());
            return 0;
        case 0x7E:
            print("reset fail: ");
            _delay_ms(500);
            xprintf("%02X\n", serial_recv());
            return 0;
        case 0x7F:

            for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00;
            return 0;
    }

    if (code&0x80) {

        if (matrix_is_on(ROW(code), COL(code))) {
            matrix[ROW(code)] &= ~(1<<COL(code));
        }
    } else {

        if (!matrix_is_on(ROW(code), COL(code))) {
            matrix[ROW(code)] |= (1<<COL(code));
        }
    }

    matrix_scan_quantum();
    return code;
}
