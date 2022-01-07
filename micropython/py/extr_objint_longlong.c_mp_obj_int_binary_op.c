
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ mp_obj_t ;
struct TYPE_2__ {long long val; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int mp_binary_op_t ;
 scalar_t__ MP_OBJ_NULL ;
 long long MP_OBJ_SMALL_INT_VALUE (scalar_t__) ;
 int assert (scalar_t__) ;
 scalar_t__ mp_obj_float_binary_op (int,long long,scalar_t__) ;
 scalar_t__ mp_obj_int_binary_op_extra_cases (int,scalar_t__,scalar_t__) ;
 scalar_t__ mp_obj_is_small_int (scalar_t__) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 scalar_t__ mp_obj_new_bool (int) ;
 scalar_t__ mp_obj_new_int_from_ll (long long) ;
 int mp_raise_ValueError (char*) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_ZeroDivisionError ;
 int mp_type_int ;

mp_obj_t mp_obj_int_binary_op(mp_binary_op_t op, mp_obj_t lhs_in, mp_obj_t rhs_in) {
    long long lhs_val;
    long long rhs_val;

    if (mp_obj_is_small_int(lhs_in)) {
        lhs_val = MP_OBJ_SMALL_INT_VALUE(lhs_in);
    } else {
        assert(mp_obj_is_type(lhs_in, &mp_type_int));
        lhs_val = ((mp_obj_int_t*)lhs_in)->val;
    }

    if (mp_obj_is_small_int(rhs_in)) {
        rhs_val = MP_OBJ_SMALL_INT_VALUE(rhs_in);
    } else if (mp_obj_is_type(rhs_in, &mp_type_int)) {
        rhs_val = ((mp_obj_int_t*)rhs_in)->val;
    } else {

        return mp_obj_int_binary_op_extra_cases(op, lhs_in, rhs_in);
    }

    switch (op) {
        case 154:
        case 150:
            return mp_obj_new_int_from_ll(lhs_val + rhs_val);
        case 129:
        case 141:
            return mp_obj_new_int_from_ll(lhs_val - rhs_val);
        case 133:
        case 145:
            return mp_obj_new_int_from_ll(lhs_val * rhs_val);
        case 151:
        case 148:
            if (rhs_val == 0) {
                goto zero_division;
            }
            return mp_obj_new_int_from_ll(lhs_val / rhs_val);
        case 136:
        case 146:
            if (rhs_val == 0) {
                goto zero_division;
            }
            return mp_obj_new_int_from_ll(lhs_val % rhs_val);

        case 153:
        case 149:
            return mp_obj_new_int_from_ll(lhs_val & rhs_val);
        case 132:
        case 144:
            return mp_obj_new_int_from_ll(lhs_val | rhs_val);
        case 128:
        case 140:
            return mp_obj_new_int_from_ll(lhs_val ^ rhs_val);

        case 137:
        case 147:
            return mp_obj_new_int_from_ll(lhs_val << (int)rhs_val);
        case 130:
        case 142:
            return mp_obj_new_int_from_ll(lhs_val >> (int)rhs_val);

        case 131:
        case 143: {
            if (rhs_val < 0) {



                mp_raise_ValueError("negative power with no float support");

            }
            long long ans = 1;
            while (rhs_val > 0) {
                if (rhs_val & 1) {
                    ans *= lhs_val;
                }
                if (rhs_val == 1) {
                    break;
                }
                rhs_val /= 2;
                lhs_val *= lhs_val;
            }
            return mp_obj_new_int_from_ll(ans);
        }

        case 139:
            return mp_obj_new_bool(lhs_val < rhs_val);
        case 135:
            return mp_obj_new_bool(lhs_val > rhs_val);
        case 138:
            return mp_obj_new_bool(lhs_val <= rhs_val);
        case 134:
            return mp_obj_new_bool(lhs_val >= rhs_val);
        case 152:
            return mp_obj_new_bool(lhs_val == rhs_val);

        default:
            return MP_OBJ_NULL;
    }

zero_division:
    mp_raise_msg(&mp_type_ZeroDivisionError, "divide by zero");
}
