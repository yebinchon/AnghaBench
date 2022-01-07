
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mp_uos_dupterm_tx_strn (char const*,int ) ;

void mp_hal_stdout_tx_strn(const char *str, uint32_t len) {
    mp_uos_dupterm_tx_strn(str, len);
}
