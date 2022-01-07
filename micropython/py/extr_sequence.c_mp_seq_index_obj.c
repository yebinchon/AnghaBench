
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_type_t ;
typedef int mp_obj_t ;


 int MP_OBJ_NEW_SMALL_INT (size_t) ;
 size_t mp_get_index (int *,size_t,int const,int) ;
 scalar_t__ mp_obj_equal (int const,int ) ;
 int * mp_obj_get_type (int const) ;
 int mp_raise_ValueError (char*) ;

mp_obj_t mp_seq_index_obj(const mp_obj_t *items, size_t len, size_t n_args, const mp_obj_t *args) {
    mp_obj_type_t *type = mp_obj_get_type(args[0]);
    mp_obj_t value = args[1];
    size_t start = 0;
    size_t stop = len;

    if (n_args >= 3) {
        start = mp_get_index(type, len, args[2], 1);
        if (n_args >= 4) {
            stop = mp_get_index(type, len, args[3], 1);
        }
    }

    for (size_t i = start; i < stop; i++) {
        if (mp_obj_equal(items[i], value)) {

            return MP_OBJ_NEW_SMALL_INT(i);
        }
    }

    mp_raise_ValueError("object not in sequence");
}
