
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_10__ {size_t used; } ;
typedef TYPE_1__ mp_map_t ;
struct TYPE_11__ {int value; } ;
typedef TYPE_2__ mp_map_elem_t ;
struct TYPE_12__ {int u_obj; int u_int; int u_bool; } ;
typedef TYPE_3__ mp_arg_val_t ;
struct TYPE_13__ {int flags; TYPE_3__ defval; int qst; } ;
typedef TYPE_4__ mp_arg_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 int MP_ARG_BOOL ;
 int MP_ARG_INT ;
 int MP_ARG_KIND_MASK ;
 int MP_ARG_KW_ONLY ;
 int MP_ARG_OBJ ;
 int MP_ARG_REQUIRED ;
 int MP_MAP_LOOKUP ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int assert (int) ;
 int mp_arg_error_terse_mismatch () ;
 TYPE_2__* mp_map_lookup (TYPE_1__*,int ,int ) ;
 int mp_obj_get_int (int ) ;
 int mp_obj_is_true (int ) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 int mp_raise_TypeError (char*) ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

void mp_arg_parse_all(size_t n_pos, const mp_obj_t *pos, mp_map_t *kws, size_t n_allowed, const mp_arg_t *allowed, mp_arg_val_t *out_vals) {
    size_t pos_found = 0, kws_found = 0;
    for (size_t i = 0; i < n_allowed; i++) {
        mp_obj_t given_arg;
        if (i < n_pos) {
            if (allowed[i].flags & MP_ARG_KW_ONLY) {
                goto extra_positional;
            }
            pos_found++;
            given_arg = pos[i];
        } else {
            mp_map_elem_t *kw = mp_map_lookup(kws, MP_OBJ_NEW_QSTR(allowed[i].qst), MP_MAP_LOOKUP);
            if (kw == ((void*)0)) {
                if (allowed[i].flags & MP_ARG_REQUIRED) {
                    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                        mp_arg_error_terse_mismatch();
                    } else {
                        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                            "'%q' argument required", allowed[i].qst));
                    }
                }
                out_vals[i] = allowed[i].defval;
                continue;
            } else {
                kws_found++;
                given_arg = kw->value;
            }
        }
        if ((allowed[i].flags & MP_ARG_KIND_MASK) == MP_ARG_BOOL) {
            out_vals[i].u_bool = mp_obj_is_true(given_arg);
        } else if ((allowed[i].flags & MP_ARG_KIND_MASK) == MP_ARG_INT) {
            out_vals[i].u_int = mp_obj_get_int(given_arg);
        } else {
            assert((allowed[i].flags & MP_ARG_KIND_MASK) == MP_ARG_OBJ);
            out_vals[i].u_obj = given_arg;
        }
    }
    if (pos_found < n_pos) {
        extra_positional:
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_arg_error_terse_mismatch();
        } else {

            mp_raise_TypeError("extra positional arguments given");
        }
    }
    if (kws_found < kws->used) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_arg_error_terse_mismatch();
        } else {

            mp_raise_TypeError("extra keyword arguments given");
        }
    }
}
