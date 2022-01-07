
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int invalid_seed ;
struct TYPE_2__ {int nid; } ;
typedef int const EC_POINT ;
typedef int const EC_GROUP ;
typedef int const BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int const*) ;
 int const* BN_CTX_new () ;
 scalar_t__ BN_add_word (int const*,int) ;
 int const* BN_copy (int const*,int ) ;
 int const* BN_dup (int const*) ;
 int BN_free (int const*) ;
 int BN_get0_nist_prime_192 () ;
 int BN_get0_nist_prime_256 () ;
 scalar_t__ BN_lshift1 (int const*,int const*) ;
 int const* BN_new () ;
 scalar_t__ BN_ucmp (int ,int const*) ;
 int EC_GROUP_check_named_curve (int const*,int,int *) ;
 int const* EC_GROUP_dup (int const*) ;
 int EC_GROUP_free (int const*) ;
 int const* EC_GROUP_get0_generator (int const*) ;
 int const* EC_GROUP_get0_order (int const*) ;
 scalar_t__ EC_GROUP_get_cofactor (int const*,int const*,int *) ;
 scalar_t__ EC_GROUP_get_curve (int const*,int const*,int const*,int const*,int *) ;
 scalar_t__ EC_GROUP_get_seed_len (int const*) ;
 int EC_GROUP_method_of (int const*) ;
 int const* EC_GROUP_new_by_curve_name (int) ;
 scalar_t__ EC_GROUP_set_curve (int const*,int const*,int const*,int const*,int *) ;
 int EC_GROUP_set_curve_name (int const*,int) ;
 scalar_t__ EC_GROUP_set_generator (int const*,int const*,int const*,int const*) ;
 int EC_GROUP_set_seed (int const*,unsigned char const*,size_t) ;
 int EC_METHOD_get_field_type (int ) ;
 scalar_t__ EC_POINT_add (int const*,int const*,int const*,int const*,int *) ;
 int const* EC_POINT_dup (int const*,int const*) ;
 int EC_POINT_free (int const*) ;
 int * EC_curve_nid2nist (int) ;
 int ERR_pop_to_mark () ;
 int ERR_set_mark () ;
 int NID_X9_62_characteristic_two_field ;
 int NID_undef ;
 int TEST_false (scalar_t__) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_le (int ,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_true (scalar_t__) ;
 TYPE_1__* curves ;

__attribute__((used)) static int check_named_curve_test(int id)
{
    int ret = 0, nid, field_nid, has_seed;
    EC_GROUP *group = ((void*)0), *gtest = ((void*)0);
    const EC_POINT *group_gen = ((void*)0);
    EC_POINT *other_gen = ((void*)0);
    BIGNUM *group_p = ((void*)0), *group_a = ((void*)0), *group_b = ((void*)0);
    BIGNUM *other_p = ((void*)0), *other_a = ((void*)0), *other_b = ((void*)0);
    BIGNUM *group_cofactor = ((void*)0), *other_cofactor = ((void*)0);
    BIGNUM *other_order = ((void*)0);
    const BIGNUM *group_order = ((void*)0);
    BN_CTX *bn_ctx = ((void*)0);
    static const unsigned char invalid_seed[] = "THIS IS NOT A VALID SEED";
    static size_t invalid_seed_len = sizeof(invalid_seed);


    nid = curves[id].nid;
    if (!TEST_ptr(bn_ctx = BN_CTX_new())
        || !TEST_ptr(group = EC_GROUP_new_by_curve_name(nid))
        || !TEST_ptr(gtest = EC_GROUP_dup(group))
        || !TEST_ptr(group_p = BN_new())
        || !TEST_ptr(group_a = BN_new())
        || !TEST_ptr(group_b = BN_new())
        || !TEST_ptr(group_cofactor = BN_new())
        || !TEST_ptr(group_gen = EC_GROUP_get0_generator(group))
        || !TEST_ptr(group_order = EC_GROUP_get0_order(group))
        || !TEST_true(EC_GROUP_get_cofactor(group, group_cofactor, ((void*)0)))
        || !TEST_true(EC_GROUP_get_curve(group, group_p, group_a, group_b, ((void*)0)))
        || !TEST_ptr(other_gen = EC_POINT_dup(group_gen, group))
        || !TEST_true(EC_POINT_add(group, other_gen, group_gen, group_gen, ((void*)0)))
        || !TEST_ptr(other_order = BN_dup(group_order))
        || !TEST_true(BN_add_word(other_order, 1))
        || !TEST_ptr(other_a = BN_dup(group_a))
        || !TEST_true(BN_add_word(other_a, 1))
        || !TEST_ptr(other_b = BN_dup(group_b))
        || !TEST_true(BN_add_word(other_b, 1))
        || !TEST_ptr(other_cofactor = BN_dup(group_cofactor))
        || !TEST_true(BN_add_word(other_cofactor, 1)))
        goto err;


    has_seed = (EC_GROUP_get_seed_len(group) > 0);
    field_nid = EC_METHOD_get_field_type(EC_GROUP_method_of(group));
    if (field_nid == NID_X9_62_characteristic_two_field) {
        if (!TEST_ptr(other_p = BN_dup(group_p))
            || !TEST_true(BN_lshift1(other_p, other_p)))
            goto err;
    } else {
        if (!TEST_ptr(other_p = BN_dup(group_p)))
            goto err;





        if (!TEST_ptr(BN_copy(other_p,
                              BN_ucmp(BN_get0_nist_prime_192(), other_p) == 0 ?
                                      BN_get0_nist_prime_256() :
                                      BN_get0_nist_prime_192())))
            goto err;
    }


    if (!TEST_int_eq(EC_GROUP_check_named_curve(group, 0, ((void*)0)), nid)

        || !TEST_int_eq(EC_GROUP_check_named_curve(group, 1, ((void*)0)),
                        EC_curve_nid2nist(nid) != ((void*)0) ? nid : NID_undef))
        goto err;


    EC_GROUP_set_curve_name(group, nid + 1);
    ERR_set_mark();
    if (!TEST_int_le(EC_GROUP_check_named_curve(group, 0, ((void*)0)), 0))
        goto err;
    ERR_pop_to_mark();


    EC_GROUP_set_curve_name(group, nid);
    if (!TEST_int_eq(EC_GROUP_check_named_curve(group, 0, ((void*)0)), nid))
        goto err;

    if (!TEST_int_eq(EC_GROUP_set_seed(group, invalid_seed, invalid_seed_len),
                     invalid_seed_len))
        goto err;

    if (has_seed) {




        if (!TEST_int_eq(EC_GROUP_check_named_curve(group, 0, ((void*)0)), 0))
            goto err;
    } else {




        if (!TEST_int_eq(EC_GROUP_check_named_curve(group, 0, ((void*)0)), nid))
            goto err;
    }

    if (!TEST_int_eq(EC_GROUP_set_seed(group, ((void*)0), 0), 1)
        || !TEST_int_eq(EC_GROUP_check_named_curve(group, 0, ((void*)0)), nid))
        goto err;


    if (!TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), nid))
        goto err;


    if (!TEST_true(EC_GROUP_set_generator(gtest, other_gen, group_order,
                                          group_cofactor))
        || !TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), 0)
        || !TEST_true(EC_GROUP_set_generator(gtest, group_gen, other_order,
                                             group_cofactor))
        || !TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), 0)

        || !TEST_false(EC_GROUP_set_generator(gtest, group_gen, ((void*)0),
                                              group_cofactor))
        || !TEST_true(EC_GROUP_set_generator(gtest, group_gen, group_order,
                                             other_cofactor))
        || !TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), 0)

        || !TEST_true(EC_GROUP_set_generator(gtest, group_gen, group_order,
                                             ((void*)0)))
        || !TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), nid)

        || !TEST_true(EC_GROUP_set_generator(gtest, group_gen, group_order,
                                             group_cofactor))
        || !TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), nid))
        goto err;
    ERR_set_mark();
    if (EC_GROUP_set_curve(gtest, other_p, group_a, group_b, ((void*)0))) {
        if (!TEST_int_le(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), 0))
            goto err;
    } else {

        ERR_pop_to_mark();
        ERR_set_mark();
    }
    if (EC_GROUP_set_curve(gtest, group_p, other_a, group_b, ((void*)0))) {
        if (!TEST_int_le(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), 0))
            goto err;
    } else {

        ERR_pop_to_mark();
        ERR_set_mark();
    }
    if (EC_GROUP_set_curve(gtest, group_p, group_a, other_b, ((void*)0))) {
        if (!TEST_int_le(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), 0))
            goto err;
    } else {

        ERR_pop_to_mark();
        ERR_set_mark();
    }
    ERR_pop_to_mark();


    if (!TEST_true(EC_GROUP_set_curve(gtest, group_p, group_a, group_b, ((void*)0)))
        || !TEST_int_eq(EC_GROUP_check_named_curve(gtest, 0, ((void*)0)), nid))
        goto err;

    ret = 1;
err:
    BN_free(group_p);
    BN_free(other_p);
    BN_free(group_a);
    BN_free(other_a);
    BN_free(group_b);
    BN_free(other_b);
    BN_free(group_cofactor);
    BN_free(other_cofactor);
    BN_free(other_order);
    EC_POINT_free(other_gen);
    EC_GROUP_free(gtest);
    EC_GROUP_free(group);
    BN_CTX_free(bn_ctx);
    return ret;
}
