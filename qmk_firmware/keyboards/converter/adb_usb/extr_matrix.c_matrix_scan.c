
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int adb_host_kbd_recv () ;
 scalar_t__ debug_matrix ;
 scalar_t__ is_iso_layout ;
 int matrix_init () ;
 int matrix_scan_quantum () ;
 int phex16 (int) ;
 int print (char*) ;
 int register_key (int) ;
 int timer_elapsed (int) ;
 int timer_read () ;
 int xprintf (char*,int) ;

uint8_t matrix_scan(void)
{






    static volatile uint16_t extra_key = 0xFFFF;
    uint16_t codes;
    uint8_t key0, key1;


    static uint16_t tick_ms;

    codes = extra_key;
    extra_key = 0xFFFF;

    if ( codes == 0xFFFF )
    {

        if (timer_elapsed(tick_ms) < 12) return 0;
        tick_ms = timer_read();

        codes = adb_host_kbd_recv();
    }

    key0 = codes>>8;
    key1 = codes&0xFF;

    if (debug_matrix && codes) {
        print("adb_host_kbd_recv: "); phex16(codes); print("\n");
    }

    if (codes == 0) {
        return 0;
    } else if (codes == 0x7F7F) {
        register_key(0x7F);
    } else if (codes == 0xFFFF) {
        register_key(0xFF);
    } else if (key0 == 0xFF) {
        xprintf("adb_host_kbd_recv: ERROR(%d)\n", codes);

        matrix_init();
        return key1;
    } else {
        if (is_iso_layout) {
            if ((key0 & 0x7F) == 0x32) {
                key0 = (key0 & 0x80) | 0x0A;
            } else if ((key0 & 0x7F) == 0x0A) {
                key0 = (key0 & 0x80) | 0x32;
            }
        }
        register_key(key0);
        if (key1 != 0xFF)
            extra_key = key1<<8 | 0xFF;
    }

    matrix_scan_quantum();
    return 1;
}
