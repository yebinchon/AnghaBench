
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_uos_dupterm_tx_strn (char const*,size_t) ;
 int write (int,char const*,size_t) ;

void mp_hal_stdout_tx_strn(const char *str, size_t len) {
    int ret = write(1, str, len);
    mp_uos_dupterm_tx_strn(str, len);
    (void)ret;
}
