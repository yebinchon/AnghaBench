
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char get_hex_char (int) ;

__attribute__((used)) static void format_hex(char *buf, int val) {
    buf[0] = get_hex_char(val >> 4);
    buf[1] = get_hex_char(val);
}
