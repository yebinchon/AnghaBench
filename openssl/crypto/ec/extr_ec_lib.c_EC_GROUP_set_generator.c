
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * mont_data; int order; int cofactor; int * generator; int const* field; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_GROUP ;
typedef int BIGNUM ;


 int BN_MONT_CTX_free (int *) ;
 int BN_copy (int ,int const*) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_odd (int ) ;
 scalar_t__ BN_is_zero (int const*) ;
 scalar_t__ BN_num_bits (int const*) ;
 int BN_zero (int ) ;
 int EC_F_EC_GROUP_SET_GENERATOR ;
 int EC_POINT_copy (int *,int const*) ;
 int * EC_POINT_new (TYPE_1__*) ;
 int EC_R_INVALID_FIELD ;
 int EC_R_INVALID_GROUP_ORDER ;
 int EC_R_UNKNOWN_COFACTOR ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ec_guess_cofactor (TYPE_1__*) ;
 int ec_precompute_mont_data (TYPE_1__*) ;

int EC_GROUP_set_generator(EC_GROUP *group, const EC_POINT *generator,
                           const BIGNUM *order, const BIGNUM *cofactor)
{
    if (generator == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_SET_GENERATOR, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }


    if (group->field == ((void*)0) || BN_is_zero(group->field)
        || BN_is_negative(group->field)) {
        ECerr(EC_F_EC_GROUP_SET_GENERATOR, EC_R_INVALID_FIELD);
        return 0;
    }






    if (order == ((void*)0) || BN_is_zero(order) || BN_is_negative(order)
        || BN_num_bits(order) > BN_num_bits(group->field) + 1) {
        ECerr(EC_F_EC_GROUP_SET_GENERATOR, EC_R_INVALID_GROUP_ORDER);
        return 0;
    }






    if (cofactor != ((void*)0) && BN_is_negative(cofactor)) {
        ECerr(EC_F_EC_GROUP_SET_GENERATOR, EC_R_UNKNOWN_COFACTOR);
        return 0;
    }

    if (group->generator == ((void*)0)) {
        group->generator = EC_POINT_new(group);
        if (group->generator == ((void*)0))
            return 0;
    }
    if (!EC_POINT_copy(group->generator, generator))
        return 0;

    if (!BN_copy(group->order, order))
        return 0;


    if (cofactor != ((void*)0) && !BN_is_zero(cofactor)) {
        if (!BN_copy(group->cofactor, cofactor))
            return 0;
    } else if (!ec_guess_cofactor(group)) {
        BN_zero(group->cofactor);
        return 0;
    }






    if (BN_is_odd(group->order)) {
        return ec_precompute_mont_data(group);
    }

    BN_MONT_CTX_free(group->mont_data);
    group->mont_data = ((void*)0);
    return 1;
}
