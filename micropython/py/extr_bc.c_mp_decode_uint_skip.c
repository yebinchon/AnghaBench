
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



const byte *mp_decode_uint_skip(const byte *ptr) {
    while ((*ptr++) & 0x80) {
    }
    return ptr;
}
