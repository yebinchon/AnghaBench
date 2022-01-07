
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_js_write (char const*,size_t) ;

void mp_hal_stdout_tx_strn(const char *str, size_t len) {
    mp_js_write(str, len);
}
