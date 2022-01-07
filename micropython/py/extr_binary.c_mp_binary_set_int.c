
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int byte ;


 scalar_t__ MP_ENDIANNESS_BIG ;
 scalar_t__ MP_ENDIANNESS_LITTLE ;
 int memcpy (int *,int *,size_t) ;

void mp_binary_set_int(size_t val_sz, bool big_endian, byte *dest, mp_uint_t val) {
    if (MP_ENDIANNESS_LITTLE && !big_endian) {
        memcpy(dest, &val, val_sz);
    } else if (MP_ENDIANNESS_BIG && big_endian) {

        memcpy(dest, (byte*)&val + sizeof(mp_uint_t) - val_sz, val_sz);
    } else {
        const byte *src;
        if (MP_ENDIANNESS_LITTLE) {
            src = (const byte*)&val + val_sz;
        } else {
            src = (const byte*)&val + sizeof(mp_uint_t);
        }
        while (val_sz--) {
            *dest++ = *--src;
        }
    }
}
