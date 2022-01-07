
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const qstr ;
typedef int byte ;


 int MP_BC_PRELUDE_SIZE_DECODE (int const*) ;
 int const mp_decode_uint_value (int const*) ;

qstr mp_obj_code_get_name(const byte *code_info) {
    MP_BC_PRELUDE_SIZE_DECODE(code_info);



    return mp_decode_uint_value(code_info);

}
