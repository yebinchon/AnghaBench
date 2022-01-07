
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int * write; int stream_o; } ;


 TYPE_1__* MP_STATE_PORT (int ) ;
 int mp_call_method_n_kw (int,int ,int *) ;
 scalar_t__ mp_obj_is_type (int ,int *) ;
 int mp_obj_new_str_of_type (int *,int const*,size_t) ;
 int mp_type_str ;
 int os_term_dup_obj ;
 int pyb_uart_type ;
 int telnet_tx_strn (char const*,size_t) ;
 int uart_tx_strn (int ,char const*,size_t) ;

void mp_hal_stdout_tx_strn(const char *str, size_t len) {
    if (MP_STATE_PORT(os_term_dup_obj)) {
        if (mp_obj_is_type(MP_STATE_PORT(os_term_dup_obj)->stream_o, &pyb_uart_type)) {
            uart_tx_strn(MP_STATE_PORT(os_term_dup_obj)->stream_o, str, len);
        } else {
            MP_STATE_PORT(os_term_dup_obj)->write[2] = mp_obj_new_str_of_type(&mp_type_str, (const byte *)str, len);
            mp_call_method_n_kw(1, 0, MP_STATE_PORT(os_term_dup_obj)->write);
        }
    }

    telnet_tx_strn(str, len);
}
