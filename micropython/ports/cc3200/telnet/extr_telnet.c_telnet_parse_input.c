
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ E_TELNET_STE_LOGGED_IN ;
 int MIN (int,int) ;
 int mp_interrupt_char ;
 int mp_keyboard_interrupt () ;
 TYPE_1__ telnet_data ;

__attribute__((used)) static void telnet_parse_input (uint8_t *str, int16_t *len) {
    int16_t b_len = *len;
    uint8_t *b_str = str;

    for (uint8_t *_str = b_str; _str < b_str + b_len; ) {
        if (*_str <= 127) {
            if (telnet_data.state == E_TELNET_STE_LOGGED_IN && *_str == mp_interrupt_char) {

                mp_keyboard_interrupt();
                (*len)--;
                _str++;
            }
            else if (*_str > 0) {
                *str++ = *_str++;
            }
            else {
                _str++;
                *len -= 1;
            }
        }
        else {

            _str += MIN(3, *len);
            *len -= MIN(3, *len);
        }
    }
}
