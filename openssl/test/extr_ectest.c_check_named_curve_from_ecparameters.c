
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int invalid_seed ;
struct TYPE_2__ {int nid; } ;
typedef int const EC_POINT ;
typedef int const EC_GROUP ;
typedef int const ECPARAMETERS ;
typedef int const BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int const*) ;
 int BN_CTX_free (int const*) ;
 int const* BN_CTX_get (int const*) ;
 int const* BN_CTX_new () ;
 int BN_CTX_start (int const*) ;
 int BN_add_word (int const*,int) ;
 int BN_copy (int const*,int const*) ;
 int ECPARAMETERS_free (int const*) ;
 int const* EC_GROUP_dup (int const*) ;
 int EC_GROUP_free (int const*) ;
 int const* EC_GROUP_get0_generator (int const*) ;
 int const* EC_GROUP_get0_order (int const*) ;
 int EC_GROUP_get_asn1_flag (int const*) ;
 int EC_GROUP_get_cofactor (int const*,int const*,int *) ;
 int EC_GROUP_get_curve_name (int const*) ;
 void* EC_GROUP_get_ecparameters (int const*,int *) ;
 int const* EC_GROUP_new_by_curve_name (int) ;
 void* EC_GROUP_new_from_ecparameters (int const*) ;
 int EC_GROUP_set_generator (int const*,int const*,int const*,int const*) ;
 int EC_GROUP_set_seed (int const*,unsigned char const*,size_t) ;
 int EC_POINT_add (int const*,int const*,int const*,int const*,int *) ;
 int const* EC_POINT_dup (int const*,int const*) ;
 int EC_POINT_free (int const*) ;
 int EC_POINT_get_affine_coordinates (int const*,int const*,int const*,int const*,int const*) ;
 int const* EC_POINT_new (int const*) ;
 int EC_POINT_set_affine_coordinates (int const*,int const*,int const*,int const*,int const*) ;
 int NID_undef ;
 int OBJ_nid2sn (int) ;
 int OPENSSL_EC_EXPLICIT_CURVE ;
 int OSSL_NELEM (int const**) ;
 int TEST_false (int ) ;
 int TEST_info (char*,int ,int ) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_ne (int,int) ;
 int TEST_note (char*,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_true (int ) ;
 int are_ec_nids_compatible (int,int) ;
 TYPE_1__* curves ;

__attribute__((used)) static int check_named_curve_from_ecparameters(int id)
{
    int ret = 0, nid, tnid;
    EC_GROUP *group = ((void*)0), *tgroup = ((void*)0), *tmpg = ((void*)0);
    const EC_POINT *group_gen = ((void*)0);
    EC_POINT *other_gen = ((void*)0);
    BIGNUM *group_cofactor = ((void*)0), *other_cofactor = ((void*)0);
    BIGNUM *other_gen_x = ((void*)0), *other_gen_y = ((void*)0);
    const BIGNUM *group_order = ((void*)0);
    BIGNUM *other_order = ((void*)0);
    BN_CTX *bn_ctx = ((void*)0);
    static const unsigned char invalid_seed[] = "THIS IS NOT A VALID SEED";
    static size_t invalid_seed_len = sizeof(invalid_seed);
    ECPARAMETERS *params = ((void*)0), *other_params = ((void*)0);
    EC_GROUP *g_ary[8] = {((void*)0)};
    EC_GROUP **g_next = &g_ary[0];
    ECPARAMETERS *p_ary[8] = {((void*)0)};
    ECPARAMETERS **p_next = &p_ary[0];


    nid = curves[id].nid;
    TEST_note("Curve %s", OBJ_nid2sn(nid));
    if (!TEST_ptr(bn_ctx = BN_CTX_new()))
        return ret;
    BN_CTX_start(bn_ctx);

    if (
        !TEST_ptr(group_cofactor = BN_CTX_get(bn_ctx))
        || !TEST_ptr(other_gen_x = BN_CTX_get(bn_ctx))
        || !TEST_ptr(other_gen_y = BN_CTX_get(bn_ctx))
        || !TEST_ptr(other_order = BN_CTX_get(bn_ctx))
        || !TEST_ptr(other_cofactor = BN_CTX_get(bn_ctx))

        || !TEST_ptr(group = EC_GROUP_new_by_curve_name(nid))
        || !TEST_ptr(params = EC_GROUP_get_ecparameters(group, ((void*)0)))
        || !TEST_ptr(group_gen = EC_GROUP_get0_generator(group))
        || !TEST_ptr(group_order = EC_GROUP_get0_order(group))
        || !TEST_true(EC_GROUP_get_cofactor(group, group_cofactor, ((void*)0)))

        || !TEST_ptr(tmpg = EC_GROUP_dup(group))
        || !TEST_ptr(other_gen = EC_POINT_dup(group_gen, group))
        || !TEST_true(EC_POINT_add(group, other_gen, group_gen, group_gen, ((void*)0)))
        || !TEST_true(EC_POINT_get_affine_coordinates(group, other_gen,
                      other_gen_x, other_gen_y, bn_ctx))
        || !TEST_true(BN_copy(other_order, group_order))
        || !TEST_true(BN_add_word(other_order, 1))
        || !TEST_true(BN_copy(other_cofactor, group_cofactor))
        || !TEST_true(BN_add_word(other_cofactor, 1)))
        goto err;

    EC_POINT_free(other_gen);
    other_gen = ((void*)0);

    if (!TEST_ptr(other_gen = EC_POINT_new(tmpg))
        || !TEST_true(EC_POINT_set_affine_coordinates(tmpg, other_gen,
                                                      other_gen_x, other_gen_y,
                                                      bn_ctx)))
        goto err;
    if (!TEST_ptr(tgroup = *g_next++ = EC_GROUP_new_from_ecparameters(params))
        || !TEST_int_ne((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef))
        goto err;




    if (!TEST_true(are_ec_nids_compatible(nid, tnid))) {
        TEST_info("nid = %s, tnid = %s", OBJ_nid2sn(nid), OBJ_nid2sn(tnid));
        goto err;
    }

    if (!TEST_int_eq(EC_GROUP_get_asn1_flag(tgroup), OPENSSL_EC_EXPLICIT_CURVE))
        goto err;





    if (!TEST_int_eq(EC_GROUP_set_seed(tmpg, invalid_seed, invalid_seed_len),
                     invalid_seed_len)
            || !TEST_ptr(other_params = *p_next++ =
                         EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
            || !TEST_ptr(tgroup = *g_next++ =
                          EC_GROUP_new_from_ecparameters(other_params))
            || !TEST_int_ne((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)
            || !TEST_true(are_ec_nids_compatible(nid, tnid))
            || !TEST_int_eq(EC_GROUP_get_asn1_flag(tgroup),
                            OPENSSL_EC_EXPLICIT_CURVE)) {
        TEST_info("nid = %s, tnid = %s", OBJ_nid2sn(nid), OBJ_nid2sn(tnid));
        goto err;
    }





    if (!TEST_int_eq(EC_GROUP_set_seed(tmpg, ((void*)0), 0), 1)
            || !TEST_ptr(other_params = *p_next++ =
                         EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
            || !TEST_ptr(tgroup = *g_next++ =
                          EC_GROUP_new_from_ecparameters(other_params))
            || !TEST_int_ne((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)
            || !TEST_true(are_ec_nids_compatible(nid, tnid))
            || !TEST_int_eq(EC_GROUP_get_asn1_flag(tgroup),
                            OPENSSL_EC_EXPLICIT_CURVE)) {
        TEST_info("nid = %s, tnid = %s", OBJ_nid2sn(nid), OBJ_nid2sn(tnid));
        goto err;
    }





    if (
        !TEST_true(EC_GROUP_set_generator(tmpg, other_gen, group_order,
                                          group_cofactor))
        || !TEST_ptr(other_params = *p_next++ =
                     EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
        || !TEST_ptr(tgroup = *g_next++ =
                      EC_GROUP_new_from_ecparameters(other_params))
        || !TEST_int_eq((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)

        || !TEST_true(EC_GROUP_set_generator(tmpg, group_gen, other_order,
                                             group_cofactor))
        || !TEST_ptr(other_params = *p_next++ =
                     EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
        || !TEST_ptr(tgroup = *g_next++ =
                      EC_GROUP_new_from_ecparameters(other_params))
        || !TEST_int_eq((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)

        || !TEST_false(EC_GROUP_set_generator(tmpg, group_gen, ((void*)0),
                                              group_cofactor))

        || !TEST_true(EC_GROUP_set_generator(tmpg, group_gen, group_order,
                                             other_cofactor))
        || !TEST_ptr(other_params = *p_next++ =
                     EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
        || !TEST_ptr(tgroup = *g_next++ =
                      EC_GROUP_new_from_ecparameters(other_params))
        || !TEST_int_ne((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)
        || !TEST_true(are_ec_nids_compatible(nid, tnid))
        || !TEST_int_eq(EC_GROUP_get_asn1_flag(tgroup),
                        OPENSSL_EC_EXPLICIT_CURVE)

        || !TEST_true(EC_GROUP_set_generator(tmpg, group_gen, group_order,
                                             ((void*)0)))
        || !TEST_ptr(other_params = *p_next++ =
                     EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
        || !TEST_ptr(tgroup = *g_next++ =
                      EC_GROUP_new_from_ecparameters(other_params))
        || !TEST_int_ne((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)
        || !TEST_true(are_ec_nids_compatible(nid, tnid))
        || !TEST_int_eq(EC_GROUP_get_asn1_flag(tgroup),
                        OPENSSL_EC_EXPLICIT_CURVE)

        || !TEST_true(EC_GROUP_set_generator(tmpg, group_gen, group_order,
                                             group_cofactor))
        || !TEST_ptr(other_params = *p_next++ =
                     EC_GROUP_get_ecparameters(tmpg, ((void*)0)))
        || !TEST_ptr(tgroup = *g_next++ =
                      EC_GROUP_new_from_ecparameters(other_params))
        || !TEST_int_ne((tnid = EC_GROUP_get_curve_name(tgroup)), NID_undef)
        || !TEST_true(are_ec_nids_compatible(nid, tnid))
        || !TEST_int_eq(EC_GROUP_get_asn1_flag(tgroup),
                        OPENSSL_EC_EXPLICIT_CURVE))
        goto err;

    ret = 1;
err:
    for (g_next = &g_ary[0]; g_next < g_ary + OSSL_NELEM(g_ary); g_next++)
        EC_GROUP_free(*g_next);
    for (p_next = &p_ary[0]; p_next < p_ary + OSSL_NELEM(g_ary); p_next++)
        ECPARAMETERS_free(*p_next);
    ECPARAMETERS_free(params);
    EC_POINT_free(other_gen);
    EC_GROUP_free(tmpg);
    EC_GROUP_free(group);
    BN_CTX_end(bn_ctx);
    BN_CTX_free(bn_ctx);
    return ret;
}
