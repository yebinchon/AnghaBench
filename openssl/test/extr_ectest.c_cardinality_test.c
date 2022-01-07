
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_copy (int *,int ) ;
 int BN_lshift (int *,int *,int) ;
 int BN_set_word (int *,int ) ;
 int BN_sub (int *,int *,int ) ;
 int BN_value_one () ;
 int EC_GROUP_free (int *) ;
 int EC_GROUP_get0_generator (int *) ;
 int EC_GROUP_get0_order (int *) ;
 int EC_GROUP_get_cofactor (int *,int *,int *) ;
 int EC_GROUP_get_curve (int *,int *,int *,int *,int *) ;
 int EC_GROUP_method_of (int *) ;
 int * EC_GROUP_new (int ) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int EC_GROUP_set_curve (int *,int *,int *,int *,int *) ;
 int EC_GROUP_set_generator (int *,int *,int *,int *) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int *,int ,int *,int *,int *) ;
 int * EC_POINT_new (int *) ;
 int EC_POINT_set_affine_coordinates (int *,int *,int *,int *,int *) ;
 int OBJ_nid2sn (int) ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_false (int ) ;
 int TEST_info (char*,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 TYPE_1__* curves ;

__attribute__((used)) static int cardinality_test(int n)
{
    int ret = 0;
    int nid = curves[n].nid;
    BN_CTX *ctx = ((void*)0);
    EC_GROUP *g1 = ((void*)0), *g2 = ((void*)0);
    EC_POINT *g2_gen = ((void*)0);
    BIGNUM *g1_p = ((void*)0), *g1_a = ((void*)0), *g1_b = ((void*)0), *g1_x = ((void*)0), *g1_y = ((void*)0),
           *g1_order = ((void*)0), *g1_cf = ((void*)0), *g2_cf = ((void*)0);

    TEST_info("Curve %s cardinality test", OBJ_nid2sn(nid));

    if (!TEST_ptr(ctx = BN_CTX_new())
        || !TEST_ptr(g1 = EC_GROUP_new_by_curve_name(nid))
        || !TEST_ptr(g2 = EC_GROUP_new(EC_GROUP_method_of(g1)))) {
        EC_GROUP_free(g1);
        EC_GROUP_free(g2);
        BN_CTX_free(ctx);
        return 0;
    }

    BN_CTX_start(ctx);
    g1_p = BN_CTX_get(ctx);
    g1_a = BN_CTX_get(ctx);
    g1_b = BN_CTX_get(ctx);
    g1_x = BN_CTX_get(ctx);
    g1_y = BN_CTX_get(ctx);
    g1_order = BN_CTX_get(ctx);
    g1_cf = BN_CTX_get(ctx);

    if (!TEST_ptr(g2_cf = BN_CTX_get(ctx))

        || !TEST_true(EC_GROUP_get_curve(g1, g1_p, g1_a, g1_b, ctx))
        || !TEST_true(EC_POINT_get_affine_coordinates(g1,
                      EC_GROUP_get0_generator(g1), g1_x, g1_y, ctx))
        || !TEST_true(BN_copy(g1_order, EC_GROUP_get0_order(g1)))
        || !TEST_true(EC_GROUP_get_cofactor(g1, g1_cf, ctx))

        || !TEST_true(EC_GROUP_set_curve(g2, g1_p, g1_a, g1_b, ctx))
        || !TEST_ptr(g2_gen = EC_POINT_new(g2))
        || !TEST_true(EC_POINT_set_affine_coordinates(g2, g2_gen, g1_x, g1_y, ctx))

        || !TEST_true(EC_GROUP_set_generator(g2, g2_gen, g1_order, ((void*)0)))
        || !TEST_true(EC_GROUP_get_cofactor(g2, g2_cf, ctx))
        || !TEST_BN_eq(g1_cf, g2_cf)

        || !TEST_true(BN_set_word(g2_cf, 0))
        || !TEST_true(EC_GROUP_set_generator(g2, g2_gen, g1_order, g2_cf))
        || !TEST_true(EC_GROUP_get_cofactor(g2, g2_cf, ctx))
        || !TEST_BN_eq(g1_cf, g2_cf)

        || !TEST_true(BN_set_word(g2_cf, 0))
        || !TEST_true(BN_sub(g2_cf, g2_cf, BN_value_one()))
        || !TEST_false(EC_GROUP_set_generator(g2, g2_gen, g1_order, g2_cf))

        || !TEST_false(EC_GROUP_set_generator(g2, g2_gen, ((void*)0), ((void*)0)))

        || !TEST_true(BN_set_word(g1_order, 0))
        || !TEST_false(EC_GROUP_set_generator(g2, g2_gen, g1_order, ((void*)0)))

        || !TEST_true(BN_set_word(g2_cf, 0))
        || !TEST_true(BN_sub(g2_cf, g2_cf, BN_value_one()))
        || !TEST_false(EC_GROUP_set_generator(g2, g2_gen, g1_order, ((void*)0)))

        || !TEST_true(BN_lshift(g1_order, g1_p, 2))
        || !TEST_false(EC_GROUP_set_generator(g2, g2_gen, g1_order, ((void*)0))))
        goto err;
    ret = 1;
 err:
    EC_POINT_free(g2_gen);
    EC_GROUP_free(g1);
    EC_GROUP_free(g2);
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ret;
}
