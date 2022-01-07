
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mp_obj_t ;


 int MP_ENDIANNESS_BIG ;
 size_t mp_binary_get_size (char,char,int *) ;
 int mp_binary_set_val_array_from_int (char,void*,size_t,int ) ;
 void* mp_obj_get_float (int ) ;
 int mp_obj_get_int (int ) ;
 int mp_obj_int_to_bytes_impl (int ,int ,size_t,int *) ;
 int mp_obj_is_type (int ,int *) ;
 int mp_type_int ;

void mp_binary_set_val_array(char typecode, void *p, size_t index, mp_obj_t val_in) {
    switch (typecode) {
        case 'O':
            ((mp_obj_t*)p)[index] = val_in;
            break;
        default:
            mp_binary_set_val_array_from_int(typecode, p, index, mp_obj_get_int(val_in));
    }
}
