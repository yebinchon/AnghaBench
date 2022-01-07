
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;
typedef long mp_int_t ;



 int MP_OBJ_NEW_SMALL_INT (long) ;
 int mp_obj_new_float (double) ;
 int mp_obj_new_int (long) ;
 int mp_obj_new_int_from_ll (long long) ;
 int mp_obj_new_int_from_uint (unsigned long) ;
 int mp_obj_new_int_from_ull (unsigned long long) ;

mp_obj_t mp_binary_get_val_array(char typecode, void *p, size_t index) {
    mp_int_t val = 0;
    switch (typecode) {
        case 'b':
            val = ((signed char*)p)[index];
            break;
        case 128:
        case 'B':
            val = ((unsigned char*)p)[index];
            break;
        case 'h':
            val = ((short*)p)[index];
            break;
        case 'H':
            val = ((unsigned short*)p)[index];
            break;
        case 'i':
            return mp_obj_new_int(((int*)p)[index]);
        case 'I':
            return mp_obj_new_int_from_uint(((unsigned int*)p)[index]);
        case 'l':
            return mp_obj_new_int(((long*)p)[index]);
        case 'L':
            return mp_obj_new_int_from_uint(((unsigned long*)p)[index]);
        case 'O':
            return ((mp_obj_t*)p)[index];

        case 'P':
            return mp_obj_new_int((mp_int_t)(uintptr_t)((void**)p)[index]);
    }
    return MP_OBJ_NEW_SMALL_INT(val);
}
