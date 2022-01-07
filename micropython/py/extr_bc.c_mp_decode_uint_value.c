
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int byte ;


 int mp_decode_uint (int const**) ;

mp_uint_t mp_decode_uint_value(const byte *ptr) {
    return mp_decode_uint(&ptr);
}
