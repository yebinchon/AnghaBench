
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {scalar_t__ buf; } ;
typedef TYPE_1__ mp_buffer_info_t ;
struct TYPE_5__ {int * read; int stream_o; } ;


 int MP_BUFFER_READ ;
 TYPE_3__* MP_STATE_PORT (int ) ;
 int mp_call_method_n_kw (int,int ,int *) ;
 int mp_get_buffer_raise (int ,TYPE_1__*,int ) ;
 int mp_hal_delay_ms (int) ;
 scalar_t__ mp_obj_is_true (int ) ;
 scalar_t__ mp_obj_is_type (int ,int *) ;
 int mp_obj_new_int (int) ;
 int os_term_dup_obj ;
 int pyb_uart_type ;
 scalar_t__ telnet_rx_any () ;
 int telnet_rx_char () ;
 scalar_t__ uart_rx_any (int ) ;
 int uart_rx_char (int ) ;

int mp_hal_stdin_rx_chr(void) {
    for ( ;; ) {

        if (telnet_rx_any()) {
            return telnet_rx_char();
        } else if (MP_STATE_PORT(os_term_dup_obj)) {
            if (mp_obj_is_type(MP_STATE_PORT(os_term_dup_obj)->stream_o, &pyb_uart_type)) {
                if (uart_rx_any(MP_STATE_PORT(os_term_dup_obj)->stream_o)) {
                    return uart_rx_char(MP_STATE_PORT(os_term_dup_obj)->stream_o);
                }
            } else {
                MP_STATE_PORT(os_term_dup_obj)->read[2] = mp_obj_new_int(1);
                mp_obj_t data = mp_call_method_n_kw(1, 0, MP_STATE_PORT(os_term_dup_obj)->read);

                if (mp_obj_is_true(data)) {
                    mp_buffer_info_t bufinfo;
                    mp_get_buffer_raise(data, &bufinfo, MP_BUFFER_READ);
                    return ((int *)(bufinfo.buf))[0];
                }
            }
        }
        mp_hal_delay_ms(1);
    }
}
