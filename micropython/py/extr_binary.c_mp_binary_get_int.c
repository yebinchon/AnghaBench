
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int byte ;



long long mp_binary_get_int(size_t size, bool is_signed, bool big_endian, const byte *src) {
    int delta;
    if (!big_endian) {
        delta = -1;
        src += size - 1;
    } else {
        delta = 1;
    }

    long long val = 0;
    if (is_signed && *src & 0x80) {
        val = -1;
    }
    for (uint i = 0; i < size; i++) {
        val <<= 8;
        val |= *src;
        src += delta;
    }

    return val;
}
