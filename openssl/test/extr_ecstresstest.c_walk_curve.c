
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ intmax_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int EC_POINT_get_affine_coordinates (int const*,int *,int *,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int *,int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static BIGNUM *walk_curve(const EC_GROUP *group, EC_POINT *point, intmax_t num)
{
    BIGNUM *scalar = ((void*)0);
    intmax_t i;

    if (!TEST_ptr(scalar = BN_new())
            || !TEST_true(EC_POINT_get_affine_coordinates(group, point, scalar,
                                                          ((void*)0), ((void*)0))))
        goto err;

    for (i = 0; i < num; i++) {
        if (!TEST_true(EC_POINT_mul(group, point, ((void*)0), point, scalar, ((void*)0)))
                || !TEST_true(EC_POINT_get_affine_coordinates(group, point,
                                                              scalar,
                                                              ((void*)0), ((void*)0))))
            goto err;
    }
    return scalar;

err:
    BN_free(scalar);
    return ((void*)0);
}
