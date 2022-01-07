
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpz_t ;
typedef int mpz_dig_t ;
typedef int mp_obj_t ;
struct TYPE_4__ {int mpz; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int mp_int_t ;
typedef int mp_float_t ;
typedef int mp_binary_op_t ;


 int MPZ_NUM_DIG_FOR_INT ;


 int MP_BINARY_OP_CONTAINS ;
 int MP_BINARY_OP_DIVMOD ;
 int MP_BINARY_OP_INPLACE_TRUE_DIVIDE ;
 int MP_BINARY_OP_TRUE_DIVIDE ;

 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 int MP_OBJ_NULL ;
 int MP_OBJ_SMALL_INT_VALUE (int ) ;
 scalar_t__ MP_OBJ_TO_PTR (int ) ;
 int assert (int) ;
 int mp_obj_complex_binary_op (int,int,int ,int ) ;
 int mp_obj_float_binary_op (int,int,int ) ;
 int mp_obj_int_binary_op_extra_cases (int,int ,int ) ;
 int mp_obj_int_get_checked (int ) ;
 TYPE_1__* mp_obj_int_new_mpz () ;
 scalar_t__ mp_obj_is_float (int ) ;
 scalar_t__ mp_obj_is_small_int (int ) ;
 int mp_obj_is_type (int ,int *) ;
 int mp_obj_new_bool (int) ;
 int mp_obj_new_float (int) ;
 int mp_obj_new_tuple (int,int *) ;
 int mp_raise_ValueError (char*) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_ZeroDivisionError ;
 int mp_type_complex ;
 int mp_type_int ;
 int mpz_add_inpl (int *,int const*,int const*) ;
 int mpz_and_inpl (int *,int const*,int const*) ;
 int mpz_as_float (int const*) ;
 int mpz_cmp (int const*,int const*) ;
 int mpz_deinit (int *) ;
 int mpz_divmod_inpl (int *,int *,int const*,int const*) ;
 int mpz_init_fixed_from_int (int *,int *,int,int ) ;
 int mpz_init_zero (int *) ;
 int mpz_is_neg (int const*) ;
 scalar_t__ mpz_is_zero (int const*) ;
 int mpz_mul_inpl (int *,int const*,int const*) ;
 int mpz_or_inpl (int *,int const*,int const*) ;
 int mpz_pow_inpl (int *,int const*,int const*) ;
 int mpz_shl_inpl (int *,int const*,int ) ;
 int mpz_shr_inpl (int *,int const*,int ) ;
 int mpz_sub_inpl (int *,int const*,int const*) ;
 int mpz_xor_inpl (int *,int const*,int const*) ;

mp_obj_t mp_obj_int_binary_op(mp_binary_op_t op, mp_obj_t lhs_in, mp_obj_t rhs_in) {
    const mpz_t *zlhs;
    const mpz_t *zrhs;
    mpz_t z_int;
    mpz_dig_t z_int_dig[MPZ_NUM_DIG_FOR_INT];


    if (mp_obj_is_small_int(lhs_in)) {
        mpz_init_fixed_from_int(&z_int, z_int_dig, MPZ_NUM_DIG_FOR_INT, MP_OBJ_SMALL_INT_VALUE(lhs_in));
        zlhs = &z_int;
    } else {
        assert(mp_obj_is_type(lhs_in, &mp_type_int));
        zlhs = &((mp_obj_int_t*)MP_OBJ_TO_PTR(lhs_in))->mpz;
    }


    if (mp_obj_is_small_int(rhs_in)) {
        mpz_init_fixed_from_int(&z_int, z_int_dig, MPZ_NUM_DIG_FOR_INT, MP_OBJ_SMALL_INT_VALUE(rhs_in));
        zrhs = &z_int;
    } else if (mp_obj_is_type(rhs_in, &mp_type_int)) {
        zrhs = &((mp_obj_int_t*)MP_OBJ_TO_PTR(rhs_in))->mpz;
    } else {

        return mp_obj_int_binary_op_extra_cases(op, lhs_in, rhs_in);
    }
    if (op >= 144 && op < MP_BINARY_OP_CONTAINS) {
        mp_obj_int_t *res = mp_obj_int_new_mpz();

        switch (op) {
            case 154:
            case 150:
                mpz_add_inpl(&res->mpz, zlhs, zrhs);
                break;
            case 129:
            case 141:
                mpz_sub_inpl(&res->mpz, zlhs, zrhs);
                break;
            case 133:
            case 145:
                mpz_mul_inpl(&res->mpz, zlhs, zrhs);
                break;
            case 151:
            case 148: {
                if (mpz_is_zero(zrhs)) {
                    zero_division_error:
                    mp_raise_msg(&mp_type_ZeroDivisionError, "divide by zero");
                }
                mpz_t rem; mpz_init_zero(&rem);
                mpz_divmod_inpl(&res->mpz, &rem, zlhs, zrhs);
                mpz_deinit(&rem);
                break;
            }
            case 136:
            case 146: {
                if (mpz_is_zero(zrhs)) {
                    goto zero_division_error;
                }
                mpz_t quo; mpz_init_zero(&quo);
                mpz_divmod_inpl(&quo, &res->mpz, zlhs, zrhs);
                mpz_deinit(&quo);
                break;
            }

            case 153:
            case 149:
                mpz_and_inpl(&res->mpz, zlhs, zrhs);
                break;
            case 132:
            case 144:
                mpz_or_inpl(&res->mpz, zlhs, zrhs);
                break;
            case 128:
            case 140:
                mpz_xor_inpl(&res->mpz, zlhs, zrhs);
                break;

            case 137:
            case 147:
            case 130:
            case 142: {
                mp_int_t irhs = mp_obj_int_get_checked(rhs_in);
                if (irhs < 0) {
                    mp_raise_ValueError("negative shift count");
                }
                if (op == 137 || op == 147) {
                    mpz_shl_inpl(&res->mpz, zlhs, irhs);
                } else {
                    mpz_shr_inpl(&res->mpz, zlhs, irhs);
                }
                break;
            }

            case 131:
            case 143:
                if (mpz_is_neg(zrhs)) {



                    mp_raise_ValueError("negative power with no float support");

                }
                mpz_pow_inpl(&res->mpz, zlhs, zrhs);
                break;

            default: {
                assert(op == MP_BINARY_OP_DIVMOD);
                if (mpz_is_zero(zrhs)) {
                    goto zero_division_error;
                }
                mp_obj_int_t *quo = mp_obj_int_new_mpz();
                mpz_divmod_inpl(&quo->mpz, &res->mpz, zlhs, zrhs);
                mp_obj_t tuple[2] = {MP_OBJ_FROM_PTR(quo), MP_OBJ_FROM_PTR(res)};
                return mp_obj_new_tuple(2, tuple);
            }
        }

        return MP_OBJ_FROM_PTR(res);

    } else {
        int cmp = mpz_cmp(zlhs, zrhs);
        switch (op) {
            case 139:
                return mp_obj_new_bool(cmp < 0);
            case 135:
                return mp_obj_new_bool(cmp > 0);
            case 138:
                return mp_obj_new_bool(cmp <= 0);
            case 134:
                return mp_obj_new_bool(cmp >= 0);
            case 152:
                return mp_obj_new_bool(cmp == 0);

            default:
                return MP_OBJ_NULL;
        }
    }
}
