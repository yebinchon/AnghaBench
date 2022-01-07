
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mp_print_t ;


 int mp_printf (int const*,char*,int const) ;

__attribute__((used)) static void dump_hex_bytes(const mp_print_t *print, size_t len, const uint8_t *buf) {
    for (size_t i = 0; i < len; ++i) {
        mp_printf(print, " %02x", buf[i]);
    }
}
