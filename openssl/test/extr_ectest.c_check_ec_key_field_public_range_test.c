
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; } ;
typedef int const EC_POINT ;
typedef int const EC_METHOD ;
typedef int const EC_KEY ;
typedef int const EC_GROUP ;
typedef int const BIGNUM ;


 int BN_GF2m_add (int const*,int const*,int const*) ;
 int BN_add (int const*,int const*,int const*) ;
 int BN_free (int const*) ;
 int const* BN_new () ;
 int const* EC_GROUP_get0_field (int const*) ;
 int const* EC_GROUP_method_of (int const*) ;
 int EC_KEY_check_key (int const*) ;
 int EC_KEY_free (int const*) ;
 int EC_KEY_generate_key (int const*) ;
 int const* EC_KEY_get0_group (int const*) ;
 int const* EC_KEY_get0_public_key (int const*) ;
 int const* EC_KEY_new_by_curve_name (int ) ;
 int EC_KEY_set_public_key_affine_coordinates (int const*,int const*,int const*) ;
 int EC_METHOD_get_field_type (int const*) ;
 int EC_POINT_get_affine_coordinates (int const*,int const*,int const*,int const*,int *) ;
 int NID_X9_62_characteristic_two_field ;
 int NID_X9_62_prime_field ;
 int TEST_error (char*) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_le (int ,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_true (int ) ;
 TYPE_1__* curves ;

__attribute__((used)) static int check_ec_key_field_public_range_test(int id)
{
    int ret = 0, type = 0;
    const EC_POINT *pub = ((void*)0);
    const EC_GROUP *group = ((void*)0);
    const EC_METHOD *meth = ((void*)0);
    const BIGNUM *field = ((void*)0);
    BIGNUM *x = ((void*)0), *y = ((void*)0);
    EC_KEY *key = ((void*)0);

    if (!TEST_ptr(x = BN_new())
            || !TEST_ptr(y = BN_new())
            || !TEST_ptr(key = EC_KEY_new_by_curve_name(curves[id].nid))
            || !TEST_ptr(group = EC_KEY_get0_group(key))
            || !TEST_ptr(meth = EC_GROUP_method_of(group))
            || !TEST_ptr(field = EC_GROUP_get0_field(group))
            || !TEST_int_gt(EC_KEY_generate_key(key), 0)
            || !TEST_int_gt(EC_KEY_check_key(key), 0)
            || !TEST_ptr(pub = EC_KEY_get0_public_key(key))
            || !TEST_int_gt(EC_POINT_get_affine_coordinates(group, pub, x, y,
                                                            ((void*)0)), 0))
        goto err;





    type = EC_METHOD_get_field_type(meth);

    if (type == NID_X9_62_characteristic_two_field) {

        if (!TEST_true(BN_GF2m_add(x, x, field)))
            goto err;
    } else

    if (type == NID_X9_62_prime_field) {

        if (!TEST_true(BN_add(x, x, field)))
            goto err;
    } else {

        TEST_error("Unsupported EC_METHOD field_type");
        goto err;
    }
    if (!TEST_int_le(EC_KEY_set_public_key_affine_coordinates(key, x, y), 0))
        goto err;

    ret = 1;
err:
    BN_free(x);
    BN_free(y);
    EC_KEY_free(key);
    return ret;
}
