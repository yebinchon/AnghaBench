
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COL (int) ;
 scalar_t__ KEYUP (int) ;
 size_t ROW (int) ;
 scalar_t__ SLEEP_TIMEOUT ;
 int debug (char*) ;
 int debug_hex (int) ;
 scalar_t__ disconnect_counter ;
 int handspring_reset () ;
 int last_activity ;
 int last_upKey ;
 int* matrix ;
 scalar_t__ matrix_is_on (size_t,int) ;
 int matrix_scan_quantum () ;
 int palm_reset () ;
 int print (char*) ;
 int serial_recv () ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

uint8_t matrix_scan(void)
{
    uint8_t code;
    code = serial_recv();
    if (!code) {
        if (timer_elapsed(last_activity) > SLEEP_TIMEOUT) {

            palm_reset();



            return 0;
        }

    }

   last_activity = timer_read();
   disconnect_counter=0;

    debug_hex(code); debug(" ");


    switch (code) {
        case 0xFD:
             print("rstD ");
            return 0;
        case 0xFA:
            print("rstA ");
            return 0;
    }

    if (KEYUP(code)) {
        if (code == last_upKey) {




            last_upKey=0;
            return 0;
        }

        if (matrix_is_on(ROW(code), COL(code))) {
            matrix[ROW(code)] &= ~(1<<COL(code));
            last_upKey=code;
        }
    } else {

        if (!matrix_is_on(ROW(code), COL(code))) {
            matrix[ROW(code)] |= (1<<COL(code));

        }
    }

    matrix_scan_quantum();
    return code;
}
