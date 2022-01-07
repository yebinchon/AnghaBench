
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_cmp (int *,int *) ;
 int BN_hex2bn (int **,char const*) ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int ) ;
 int EC_POINT_dbl (int *,int *,int *,int *) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int *,int *,int *,int *,int *) ;
 int EC_POINT_mul (int *,int *,int *,int *,int *,int *) ;
 int * EC_POINT_new (int *) ;
 int EC_POINT_set_Jprojective_coordinates_GFp (int *,int *,int *,int *,int *,int *) ;
 int NID_secp521r1 ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int underflow_test(void)
{
    BN_CTX *ctx = ((void*)0);
    EC_GROUP *grp = ((void*)0);
    EC_POINT *P = ((void*)0), *Q = ((void*)0), *R = ((void*)0);
    BIGNUM *x1 = ((void*)0), *y1 = ((void*)0), *z1 = ((void*)0), *x2 = ((void*)0), *y2 = ((void*)0);
    BIGNUM *k = ((void*)0);
    int testresult = 0;
    const char *x1str =
        "1534f0077fffffe87e9adcfe000000000000000000003e05a21d2400002e031b1f4"
        "b80000c6fafa4f3c1288798d624a247b5e2ffffffffffffffefe099241900004";
    const char *p521m1 =
        "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
        "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe";

    ctx = BN_CTX_new();
    if (!TEST_ptr(ctx))
        return 0;

    BN_CTX_start(ctx);
    x1 = BN_CTX_get(ctx);
    y1 = BN_CTX_get(ctx);
    z1 = BN_CTX_get(ctx);
    x2 = BN_CTX_get(ctx);
    y2 = BN_CTX_get(ctx);
    k = BN_CTX_get(ctx);
    if (!TEST_ptr(k))
        goto err;

    grp = EC_GROUP_new_by_curve_name(NID_secp521r1);
    P = EC_POINT_new(grp);
    Q = EC_POINT_new(grp);
    R = EC_POINT_new(grp);
    if (!TEST_ptr(grp) || !TEST_ptr(P) || !TEST_ptr(Q) || !TEST_ptr(R))
        goto err;

    if (!TEST_int_gt(BN_hex2bn(&x1, x1str), 0)
            || !TEST_int_gt(BN_hex2bn(&y1, p521m1), 0)
            || !TEST_int_gt(BN_hex2bn(&z1, p521m1), 0)
            || !TEST_int_gt(BN_hex2bn(&k, "02"), 0)
            || !TEST_true(EC_POINT_set_Jprojective_coordinates_GFp(grp, P, x1,
                                                                   y1, z1, ctx))
            || !TEST_true(EC_POINT_mul(grp, Q, ((void*)0), P, k, ctx))
            || !TEST_true(EC_POINT_get_affine_coordinates(grp, Q, x1, y1, ctx))
            || !TEST_true(EC_POINT_dbl(grp, R, P, ctx))
            || !TEST_true(EC_POINT_get_affine_coordinates(grp, R, x2, y2, ctx)))
        goto err;

    if (!TEST_int_eq(BN_cmp(x1, x2), 0)
            || !TEST_int_eq(BN_cmp(y1, y2), 0))
        goto err;

    testresult = 1;

 err:
    BN_CTX_end(ctx);
    EC_POINT_free(P);
    EC_POINT_free(Q);
    EC_POINT_free(R);
    EC_GROUP_free(grp);
    BN_CTX_free(ctx);

    return testresult;
}
