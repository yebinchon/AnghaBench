
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 int mp_arg_error_terse_mismatch () ;
 int mp_obj_new_exception_msg_varg (int *,char*,size_t,...) ;
 int mp_raise_TypeError (char*) ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

void mp_arg_check_num_sig(size_t n_args, size_t n_kw, uint32_t sig) {



    bool takes_kw = sig & 1;
    size_t n_args_min = sig >> 17;
    size_t n_args_max = (sig >> 1) & 0xffff;

    if (n_kw && !takes_kw) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_arg_error_terse_mismatch();
        } else {
            mp_raise_TypeError("function doesn't take keyword arguments");
        }
    }

    if (n_args_min == n_args_max) {
        if (n_args != n_args_min) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                mp_arg_error_terse_mismatch();
            } else {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                    "function takes %d positional arguments but %d were given",
                    n_args_min, n_args));
            }
        }
    } else {
        if (n_args < n_args_min) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                mp_arg_error_terse_mismatch();
            } else {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                    "function missing %d required positional arguments",
                    n_args_min - n_args));
            }
        } else if (n_args > n_args_max) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                mp_arg_error_terse_mismatch();
            } else {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                    "function expected at most %d arguments, got %d",
                    n_args_max, n_args));
            }
        }
    }
}
