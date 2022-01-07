
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 int mp_obj_get_type_str (int ) ;
 scalar_t__ mp_obj_is_type (int ,int *) ;
 int mp_obj_list_get (int ,size_t*,int **) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 int mp_obj_tuple_get (int ,size_t*,int **) ;
 int mp_raise_TypeError (char*) ;
 int mp_type_TypeError ;
 int mp_type_list ;
 int mp_type_tuple ;
 int nlr_raise (int ) ;

void mp_obj_get_array(mp_obj_t o, size_t *len, mp_obj_t **items) {
    if (mp_obj_is_type(o, &mp_type_tuple)) {
        mp_obj_tuple_get(o, len, items);
    } else if (mp_obj_is_type(o, &mp_type_list)) {
        mp_obj_list_get(o, len, items);
    } else {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_raise_TypeError("expected tuple/list");
        } else {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                "object '%s' isn't a tuple or list", mp_obj_get_type_str(o)));
        }
    }
}
