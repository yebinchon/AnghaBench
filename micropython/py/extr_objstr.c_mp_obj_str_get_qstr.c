
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qstr ;
typedef int mp_obj_t ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ mp_obj_str_t ;


 int MP_OBJ_QSTR_VALUE (int ) ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 int bad_implicit_conversion (int ) ;
 scalar_t__ mp_obj_is_qstr (int ) ;
 scalar_t__ mp_obj_is_type (int ,int *) ;
 int mp_type_str ;
 int qstr_from_strn (char*,int ) ;

qstr mp_obj_str_get_qstr(mp_obj_t self_in) {
    if (mp_obj_is_qstr(self_in)) {
        return MP_OBJ_QSTR_VALUE(self_in);
    } else if (mp_obj_is_type(self_in, &mp_type_str)) {
        mp_obj_str_t *self = MP_OBJ_TO_PTR(self_in);
        return qstr_from_strn((char*)self->data, self->len);
    } else {
        bad_implicit_conversion(self_in);
    }
}
