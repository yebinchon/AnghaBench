
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 scalar_t__ BN_hex2bn (int **,char*) ;
 int * BN_new () ;
 int EC_GF2m_simple_method () ;
 scalar_t__ EC_GROUP_copy (int *,int *) ;
 int EC_GROUP_free (int *) ;
 scalar_t__ EC_GROUP_get_curve (int *,int *,int *,int *,int *) ;
 int EC_GROUP_method_of (int *) ;
 int * EC_GROUP_new (int ) ;
 scalar_t__ EC_GROUP_set_curve (int *,int *,int *,int *,int *) ;
 scalar_t__ EC_POINT_add (int *,int *,int *,int *,int *) ;
 int EC_POINT_cmp (int *,int *,int *,int *) ;
 scalar_t__ EC_POINT_copy (int *,int *) ;
 int EC_POINT_free (int *) ;
 scalar_t__ EC_POINT_get_affine_coordinates (int *,int *,int *,int *,int *) ;
 scalar_t__ EC_POINT_invert (int *,int *,int *) ;
 scalar_t__ EC_POINT_is_at_infinity (int *,int *) ;
 int EC_POINT_is_on_curve (int *,int *,int *) ;
 int * EC_POINT_new (int *) ;
 scalar_t__ EC_POINT_oct2point (int *,int *,unsigned char*,size_t,int *) ;
 size_t EC_POINT_point2oct (int *,int *,int ,unsigned char*,int,int *) ;
 scalar_t__ EC_POINT_set_affine_coordinates (int *,int *,int *,int *,int *) ;
 scalar_t__ EC_POINT_set_compressed_coordinates (int *,int *,int *,int,int *) ;
 scalar_t__ EC_POINT_set_to_infinity (int *,int *) ;
 int POINT_CONVERSION_COMPRESSED ;
 int POINT_CONVERSION_HYBRID ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int TEST_info (char*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_ne (int ,int ) ;
 int TEST_note (char*) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_ne (size_t,int ) ;
 int TEST_true (scalar_t__) ;
 int test_output_bignum (char*,int *) ;
 int test_output_memory (char*,unsigned char*,size_t) ;

__attribute__((used)) static int char2_field_tests(void)
{
    BN_CTX *ctx = ((void*)0);
    BIGNUM *p = ((void*)0), *a = ((void*)0), *b = ((void*)0);
    EC_GROUP *group = ((void*)0), *tmp = ((void*)0);
    EC_POINT *P = ((void*)0), *Q = ((void*)0), *R = ((void*)0);
    BIGNUM *x = ((void*)0), *y = ((void*)0), *z = ((void*)0), *cof = ((void*)0), *yplusone = ((void*)0);
    unsigned char buf[100];
    size_t len;
    int k, r = 0;

    if (!TEST_ptr(ctx = BN_CTX_new())
        || !TEST_ptr(p = BN_new())
        || !TEST_ptr(a = BN_new())
        || !TEST_ptr(b = BN_new())
        || !TEST_true(BN_hex2bn(&p, "13"))
        || !TEST_true(BN_hex2bn(&a, "3"))
        || !TEST_true(BN_hex2bn(&b, "1")))
        goto err;

    group = EC_GROUP_new(EC_GF2m_simple_method());



    if (!TEST_ptr(group)
        || !TEST_true(EC_GROUP_set_curve(group, p, a, b, ctx))
        || !TEST_ptr(tmp = EC_GROUP_new(EC_GROUP_method_of(group)))
        || !TEST_true(EC_GROUP_copy(tmp, group)))
        goto err;
    EC_GROUP_free(group);
    group = tmp;
    tmp = ((void*)0);

    if (!TEST_true(EC_GROUP_get_curve(group, p, a, b, ctx)))
        goto err;

    TEST_info("Curve defined by Weierstrass equation");
    TEST_note("     y^2 + x*y = x^3 + a*x^2 + b (mod p)");
    test_output_bignum("a", a);
    test_output_bignum("b", b);
    test_output_bignum("p", p);

     if (!TEST_ptr(P = EC_POINT_new(group))
        || !TEST_ptr(Q = EC_POINT_new(group))
        || !TEST_ptr(R = EC_POINT_new(group))
        || !TEST_true(EC_POINT_set_to_infinity(group, P))
        || !TEST_true(EC_POINT_is_at_infinity(group, P)))
        goto err;

    buf[0] = 0;
    if (!TEST_true(EC_POINT_oct2point(group, Q, buf, 1, ctx))
        || !TEST_true(EC_POINT_add(group, P, P, Q, ctx))
        || !TEST_true(EC_POINT_is_at_infinity(group, P))
        || !TEST_ptr(x = BN_new())
        || !TEST_ptr(y = BN_new())
        || !TEST_ptr(z = BN_new())
        || !TEST_ptr(cof = BN_new())
        || !TEST_ptr(yplusone = BN_new())
        || !TEST_true(BN_hex2bn(&x, "6"))




        || !TEST_true(BN_hex2bn(&y, "8"))
        || !TEST_true(EC_POINT_set_affine_coordinates(group, Q, x, y, ctx))

       )
        goto err;
    if (!TEST_int_gt(EC_POINT_is_on_curve(group, Q, ctx), 0)) {





        TEST_info("Point is not on curve");
        test_output_bignum("x", x);
        test_output_bignum("y", y);
        goto err;
    }

    TEST_note("A cyclic subgroup:");
    k = 100;
    do {
        if (!TEST_int_ne(k--, 0))
            goto err;

        if (EC_POINT_is_at_infinity(group, P))
            TEST_note("     point at infinity");
        else {
            if (!TEST_true(EC_POINT_get_affine_coordinates(group, P, x, y,
                                                           ctx)))
                goto err;

            test_output_bignum("x", x);
            test_output_bignum("y", y);
        }

        if (!TEST_true(EC_POINT_copy(R, P))
            || !TEST_true(EC_POINT_add(group, P, P, Q, ctx)))
            goto err;
    }
    while (!EC_POINT_is_at_infinity(group, P));

    if (!TEST_true(EC_POINT_add(group, P, Q, R, ctx))
        || !TEST_true(EC_POINT_is_at_infinity(group, P)))
        goto err;
    len = EC_POINT_point2oct(group, Q, POINT_CONVERSION_UNCOMPRESSED,
                             buf, sizeof(buf), ctx);
    if (!TEST_size_t_ne(len, 0)
        || !TEST_true(EC_POINT_oct2point(group, P, buf, len, ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(group, P, Q, ctx)))
        goto err;
    test_output_memory("Generator as octet string, uncompressed form:",
                       buf, len);
    if (!TEST_true(EC_POINT_invert(group, P, ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(group, P, R, ctx)))
        goto err;

    TEST_note("\n");

    r = 1;
err:
    BN_CTX_free(ctx);
    BN_free(p);
    BN_free(a);
    BN_free(b);
    EC_GROUP_free(group);
    EC_GROUP_free(tmp);
    EC_POINT_free(P);
    EC_POINT_free(Q);
    EC_POINT_free(R);
    BN_free(x);
    BN_free(y);
    BN_free(z);
    BN_free(cof);
    BN_free(yplusone);
    return r;
}
