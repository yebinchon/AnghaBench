
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 int mp_obj_get_array (int ,size_t*,int **) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int,int) ;
 int mp_raise_ValueError (char*) ;
 int mp_type_ValueError ;
 int nlr_raise (int ) ;

void mp_obj_get_array_fixed_n(mp_obj_t o, size_t len, mp_obj_t **items) {
    size_t seq_len;
    mp_obj_get_array(o, &seq_len, items);
    if (seq_len != len) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_raise_ValueError("tuple/list has wrong length");
        } else {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError,
                "requested length %d but object has length %d", (int)len, (int)seq_len));
        }
    }
}
