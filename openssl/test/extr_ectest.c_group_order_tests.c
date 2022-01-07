
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const EC_POINT ;
typedef int EC_GROUP ;
typedef int const BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int const*) ;
 int const* BN_CTX_new () ;
 int BN_add (int const*,int const*,int const*) ;
 int BN_free (int const*) ;
 int BN_mul (int const*,int const*,int const*,int const*) ;
 int const* BN_new () ;
 int BN_one (int const*) ;
 int BN_set_negative (int const*,int ) ;
 int BN_set_word (int const*,int) ;
 int BN_sub (int const*,int const*,int const*) ;
 int const* BN_value_one () ;
 int const* EC_GROUP_get0_generator (int *) ;
 int EC_GROUP_get_order (int *,int const*,int const*) ;
 int EC_GROUP_precompute_mult (int *,int const*) ;
 int EC_POINT_add (int *,int const*,int const*,int const*,int const*) ;
 int EC_POINT_cmp (int *,int const*,int const*,int const*) ;
 int EC_POINT_copy (int const*,int const*) ;
 int EC_POINT_dbl (int *,int const*,int const*,int const*) ;
 int EC_POINT_free (int const*) ;
 int EC_POINT_invert (int *,int const*,int const*) ;
 int EC_POINT_is_at_infinity (int *,int const*) ;
 int EC_POINT_mul (int *,int const*,int const*,int const*,int const*,int const*) ;
 int const* EC_POINT_new (int *) ;
 int EC_POINTs_mul (int *,int const*,int *,int,int const**,int const**,int const*) ;
 int TEST_false (int ) ;
 int TEST_info (char*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_true (int ) ;

__attribute__((used)) static int group_order_tests(EC_GROUP *group)
{
    BIGNUM *n1 = ((void*)0), *n2 = ((void*)0), *order = ((void*)0);
    EC_POINT *P = ((void*)0), *Q = ((void*)0), *R = ((void*)0), *S = ((void*)0);
    const EC_POINT *G = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    int i = 0, r = 0;

    if (!TEST_ptr(n1 = BN_new())
        || !TEST_ptr(n2 = BN_new())
        || !TEST_ptr(order = BN_new())
        || !TEST_ptr(ctx = BN_CTX_new())
        || !TEST_ptr(G = EC_GROUP_get0_generator(group))
        || !TEST_ptr(P = EC_POINT_new(group))
        || !TEST_ptr(Q = EC_POINT_new(group))
        || !TEST_ptr(R = EC_POINT_new(group))
        || !TEST_ptr(S = EC_POINT_new(group)))
        goto err;

    if (!TEST_true(EC_GROUP_get_order(group, order, ctx))
        || !TEST_true(EC_POINT_mul(group, Q, order, ((void*)0), ((void*)0), ctx))
        || !TEST_true(EC_POINT_is_at_infinity(group, Q))
        || !TEST_true(EC_GROUP_precompute_mult(group, ctx))
        || !TEST_true(EC_POINT_mul(group, Q, order, ((void*)0), ((void*)0), ctx))
        || !TEST_true(EC_POINT_is_at_infinity(group, Q))
        || !TEST_true(EC_POINT_copy(P, G))
        || !TEST_true(BN_one(n1))
        || !TEST_true(EC_POINT_mul(group, Q, n1, ((void*)0), ((void*)0), ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(group, Q, P, ctx))
        || !TEST_true(BN_sub(n1, order, n1))
        || !TEST_true(EC_POINT_mul(group, Q, n1, ((void*)0), ((void*)0), ctx))
        || !TEST_true(EC_POINT_invert(group, Q, ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(group, Q, P, ctx)))
        goto err;

    for (i = 1; i <= 2; i++) {
        const BIGNUM *scalars[6];
        const EC_POINT *points[6];

        if (!TEST_true(BN_set_word(n1, i))




            || !TEST_true(EC_POINT_mul(group, P, n1, ((void*)0), ((void*)0), ctx))
            || (i == 1 && !TEST_int_eq(0, EC_POINT_cmp(group, P, G, ctx)))
            || !TEST_true(BN_one(n1))

            || !TEST_true(BN_sub(n1, n1, order))
            || !TEST_true(EC_POINT_mul(group, Q, ((void*)0), P, n1, ctx))
            || !TEST_int_eq(0, EC_POINT_cmp(group, Q, P, ctx))


            || !TEST_true(BN_add(n2, order, BN_value_one()))
            || !TEST_true(EC_POINT_mul(group, Q, ((void*)0), P, n2, ctx))
            || !TEST_int_eq(0, EC_POINT_cmp(group, Q, P, ctx))


            || !TEST_true(BN_mul(n2, n1, n2, ctx))
            || !TEST_true(EC_POINT_mul(group, Q, ((void*)0), P, n2, ctx))
            || !TEST_int_eq(0, EC_POINT_cmp(group, Q, P, ctx)))
            goto err;


        BN_set_negative(n2, 0);
        if (!TEST_true(EC_POINT_mul(group, Q, ((void*)0), P, n2, ctx))

            || !TEST_true(EC_POINT_add(group, Q, Q, P, ctx))
            || !TEST_true(EC_POINT_is_at_infinity(group, Q))


            || !TEST_false(EC_POINT_is_at_infinity(group, P)))
            goto err;

        scalars[0] = scalars[1] = BN_value_one();
        points[0] = points[1] = P;

        if (!TEST_true(EC_POINTs_mul(group, R, ((void*)0), 2, points, scalars, ctx))
            || !TEST_true(EC_POINT_dbl(group, S, points[0], ctx))
            || !TEST_int_eq(0, EC_POINT_cmp(group, R, S, ctx)))
            goto err;

        scalars[0] = n1;
        points[0] = Q;
        scalars[1] = n2;
        points[1] = P;
        scalars[2] = n1;
        points[2] = Q;
        scalars[3] = n2;
        points[3] = Q;
        scalars[4] = n1;
        points[4] = P;
        scalars[5] = n2;
        points[5] = Q;
        if (!TEST_true(EC_POINTs_mul(group, P, ((void*)0), 6, points, scalars, ctx))
            || !TEST_true(EC_POINT_is_at_infinity(group, P)))
            goto err;
    }

    r = 1;
err:
    if (r == 0 && i != 0)
        TEST_info(i == 1 ? "allowing precomputation" :
                           "without precomputation");
    EC_POINT_free(P);
    EC_POINT_free(Q);
    EC_POINT_free(R);
    EC_POINT_free(S);
    BN_free(n1);
    BN_free(n2);
    BN_free(order);
    BN_CTX_free(ctx);
    return r;
}
