
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;


 char SS_DOWN_CODE ;
 char SS_TAP_CODE ;
 char SS_UP_CODE ;
 void* pgm_read_byte (char const*) ;
 int register_code (void*) ;
 int send_char (char) ;
 int unregister_code (void*) ;
 int wait_ms (int) ;

void send_string_with_delay_P(const char *str, uint8_t interval) {
    while (1) {
        char ascii_code = pgm_read_byte(str);
        if (!ascii_code) break;
        if (ascii_code == SS_TAP_CODE) {

            uint8_t keycode = pgm_read_byte(++str);
            register_code(keycode);
            unregister_code(keycode);
        } else if (ascii_code == SS_DOWN_CODE) {

            uint8_t keycode = pgm_read_byte(++str);
            register_code(keycode);
        } else if (ascii_code == SS_UP_CODE) {

            uint8_t keycode = pgm_read_byte(++str);
            unregister_code(keycode);
        } else {
            send_char(ascii_code);
        }
        ++str;

        {
            uint8_t ms = interval;
            while (ms--) wait_ms(1);
        }
    }
}
