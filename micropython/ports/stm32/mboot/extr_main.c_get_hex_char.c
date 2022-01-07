
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char get_hex_char(int val) {
    val &= 0xf;
    if (val <= 9) {
        return '0' + val;
    } else {
        return 'A' + val - 10;
    }
}
