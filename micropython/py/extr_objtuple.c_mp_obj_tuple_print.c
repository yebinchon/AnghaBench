
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_print_t ;
typedef scalar_t__ mp_print_kind_t ;
struct TYPE_3__ {size_t len; int * items; } ;
typedef TYPE_1__ mp_obj_tuple_t ;
typedef int mp_obj_t ;


 scalar_t__ MICROPY_PY_UJSON ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 scalar_t__ PRINT_JSON ;
 scalar_t__ PRINT_REPR ;
 int mp_obj_print_helper (int const*,int ,scalar_t__) ;
 int mp_print_str (int const*,char*) ;

void mp_obj_tuple_print(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind) {
    mp_obj_tuple_t *o = MP_OBJ_TO_PTR(o_in);
    if (MICROPY_PY_UJSON && kind == PRINT_JSON) {
        mp_print_str(print, "[");
    } else {
        mp_print_str(print, "(");
        kind = PRINT_REPR;
    }
    for (size_t i = 0; i < o->len; i++) {
        if (i > 0) {
            mp_print_str(print, ", ");
        }
        mp_obj_print_helper(print, o->items[i], kind);
    }
    if (MICROPY_PY_UJSON && kind == PRINT_JSON) {
        mp_print_str(print, "]");
    } else {
        if (o->len == 1) {
            mp_print_str(print, ",");
        }
        mp_print_str(print, ")");
    }
}
