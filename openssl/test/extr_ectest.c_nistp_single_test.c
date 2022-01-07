
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nistp_test_params {int d; int degree; int order; int Gy; int Gx; int Qy; int Qx; int b; int a; int p; int (* meth ) () ;} ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_add (int *,int *,int ) ;
 int BN_check_prime (int *,int *,int *) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,int ) ;
 int * BN_new () ;
 int BN_rshift (int *,int *,int) ;
 int BN_set_word (int *,int) ;
 int BN_value_one () ;
 int EC_GROUP_free (int *) ;
 int EC_GROUP_get_degree (int *) ;
 int EC_GROUP_have_precompute_mult (int *) ;
 int * EC_GROUP_new (int ) ;
 int EC_GROUP_precompute_mult (int *,int *) ;
 int EC_GROUP_set_curve (int *,int *,int *,int *,int *) ;
 int EC_GROUP_set_generator (int *,int *,int *,int ) ;
 int EC_POINT_cmp (int *,int *,int *,int *) ;
 int EC_POINT_copy (int *,int *) ;
 int EC_POINT_dbl (int *,int *,int *,int *) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_invert (int *,int *,int *) ;
 int EC_POINT_mul (int *,int *,int *,int *,int *,int *) ;
 int * EC_POINT_new (int *) ;
 int EC_POINT_set_affine_coordinates (int *,int *,int *,int *,int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int,int ) ;
 int TEST_note (char*,...) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int group_order_tests (int *) ;
 struct nistp_test_params* nistp_tests_params ;
 int stub1 () ;

__attribute__((used)) static int nistp_single_test(int idx)
{
    const struct nistp_test_params *test = nistp_tests_params + idx;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *p = ((void*)0), *a = ((void*)0), *b = ((void*)0), *x = ((void*)0), *y = ((void*)0);
    BIGNUM *n = ((void*)0), *m = ((void*)0), *order = ((void*)0), *yplusone = ((void*)0);
    EC_GROUP *NISTP = ((void*)0);
    EC_POINT *G = ((void*)0), *P = ((void*)0), *Q = ((void*)0), *Q_CHECK = ((void*)0);
    int r = 0;

    TEST_note("NIST curve P-%d (optimised implementation):",
              test->degree);
    if (!TEST_ptr(ctx = BN_CTX_new())
        || !TEST_ptr(p = BN_new())
        || !TEST_ptr(a = BN_new())
        || !TEST_ptr(b = BN_new())
        || !TEST_ptr(x = BN_new())
        || !TEST_ptr(y = BN_new())
        || !TEST_ptr(m = BN_new())
        || !TEST_ptr(n = BN_new())
        || !TEST_ptr(order = BN_new())
        || !TEST_ptr(yplusone = BN_new())

        || !TEST_ptr(NISTP = EC_GROUP_new(test->meth()))
        || !TEST_true(BN_hex2bn(&p, test->p))
        || !TEST_int_eq(1, BN_check_prime(p, ctx, ((void*)0)))
        || !TEST_true(BN_hex2bn(&a, test->a))
        || !TEST_true(BN_hex2bn(&b, test->b))
        || !TEST_true(EC_GROUP_set_curve(NISTP, p, a, b, ctx))
        || !TEST_ptr(G = EC_POINT_new(NISTP))
        || !TEST_ptr(P = EC_POINT_new(NISTP))
        || !TEST_ptr(Q = EC_POINT_new(NISTP))
        || !TEST_ptr(Q_CHECK = EC_POINT_new(NISTP))
        || !TEST_true(BN_hex2bn(&x, test->Qx))
        || !TEST_true(BN_hex2bn(&y, test->Qy))
        || !TEST_true(BN_add(yplusone, y, BN_value_one()))




        || !TEST_false(EC_POINT_set_affine_coordinates(NISTP, Q_CHECK, x,
                                                       yplusone, ctx))
        || !TEST_true(EC_POINT_set_affine_coordinates(NISTP, Q_CHECK, x, y,
                                                      ctx))
        || !TEST_true(BN_hex2bn(&x, test->Gx))
        || !TEST_true(BN_hex2bn(&y, test->Gy))
        || !TEST_true(EC_POINT_set_affine_coordinates(NISTP, G, x, y, ctx))
        || !TEST_true(BN_hex2bn(&order, test->order))
        || !TEST_true(EC_GROUP_set_generator(NISTP, G, order, BN_value_one()))
        || !TEST_int_eq(EC_GROUP_get_degree(NISTP), test->degree))
        goto err;

    TEST_note("NIST test vectors ... ");
    if (!TEST_true(BN_hex2bn(&n, test->d)))
        goto err;

    EC_POINT_mul(NISTP, Q, n, ((void*)0), ((void*)0), ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)))
        goto err;

    EC_POINT_mul(NISTP, Q, ((void*)0), G, n, ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx))


        || !TEST_true(EC_POINT_dbl(NISTP, P, G, ctx))
        || !TEST_true(EC_GROUP_set_generator(NISTP, P, order, BN_value_one()))

        || !TEST_true(BN_rshift(m, n, 1)))
        goto err;



    EC_POINT_mul(NISTP, Q, m, ((void*)0), ((void*)0), ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)))
        goto err;

    EC_POINT_mul(NISTP, Q, ((void*)0), P, m, ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx))





        || !TEST_false(EC_GROUP_have_precompute_mult(NISTP))


        || !TEST_true(EC_GROUP_precompute_mult(NISTP, ctx))
        || !TEST_true(EC_GROUP_have_precompute_mult(NISTP)))
        goto err;


    EC_POINT_mul(NISTP, Q, m, ((void*)0), ((void*)0), ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)))
        goto err;

    EC_POINT_mul(NISTP, Q, ((void*)0), P, m, ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx))


        || !TEST_true(EC_GROUP_set_generator(NISTP, G, order, BN_value_one())))
        goto err;

    EC_POINT_mul(NISTP, Q, n, ((void*)0), ((void*)0), ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)))
        goto err;

    EC_POINT_mul(NISTP, Q, ((void*)0), G, n, ctx);
    if (!TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)))
        goto err;


    if (!TEST_true(BN_set_word(m, 32))
        || !TEST_true(BN_set_word(n, 31))
        || !TEST_true(EC_POINT_copy(P, G))
        || !TEST_true(EC_POINT_invert(NISTP, P, ctx))
        || !TEST_true(EC_POINT_mul(NISTP, Q, m, P, n, ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(NISTP, Q, G, ctx)))
      goto err;

    r = group_order_tests(NISTP);
err:
    EC_GROUP_free(NISTP);
    EC_POINT_free(G);
    EC_POINT_free(P);
    EC_POINT_free(Q);
    EC_POINT_free(Q_CHECK);
    BN_free(n);
    BN_free(m);
    BN_free(p);
    BN_free(a);
    BN_free(b);
    BN_free(x);
    BN_free(y);
    BN_free(order);
    BN_free(yplusone);
    BN_CTX_free(ctx);
    return r;
}
