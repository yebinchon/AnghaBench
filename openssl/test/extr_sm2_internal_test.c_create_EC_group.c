
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_curve_GFp (int *,int *,int *,int *) ;
 int EC_GROUP_set_generator (int *,int *,int *,int *) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (int *) ;
 int EC_POINT_set_affine_coordinates (int *,int *,int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static EC_GROUP *create_EC_group(const char *p_hex, const char *a_hex,
                                 const char *b_hex, const char *x_hex,
                                 const char *y_hex, const char *order_hex,
                                 const char *cof_hex)
{
    BIGNUM *p = ((void*)0);
    BIGNUM *a = ((void*)0);
    BIGNUM *b = ((void*)0);
    BIGNUM *g_x = ((void*)0);
    BIGNUM *g_y = ((void*)0);
    BIGNUM *order = ((void*)0);
    BIGNUM *cof = ((void*)0);
    EC_POINT *generator = ((void*)0);
    EC_GROUP *group = ((void*)0);
    int ok = 0;

    if (!TEST_true(BN_hex2bn(&p, p_hex))
            || !TEST_true(BN_hex2bn(&a, a_hex))
            || !TEST_true(BN_hex2bn(&b, b_hex)))
        goto done;

    group = EC_GROUP_new_curve_GFp(p, a, b, ((void*)0));
    if (!TEST_ptr(group))
        goto done;

    generator = EC_POINT_new(group);
    if (!TEST_ptr(generator))
        goto done;

    if (!TEST_true(BN_hex2bn(&g_x, x_hex))
            || !TEST_true(BN_hex2bn(&g_y, y_hex))
            || !TEST_true(EC_POINT_set_affine_coordinates(group, generator, g_x,
                                                          g_y, ((void*)0))))
        goto done;

    if (!TEST_true(BN_hex2bn(&order, order_hex))
            || !TEST_true(BN_hex2bn(&cof, cof_hex))
            || !TEST_true(EC_GROUP_set_generator(group, generator, order, cof)))
        goto done;

    ok = 1;
done:
    BN_free(p);
    BN_free(a);
    BN_free(b);
    BN_free(g_x);
    BN_free(g_y);
    EC_POINT_free(generator);
    BN_free(order);
    BN_free(cof);
    if (!ok) {
        EC_GROUP_free(group);
        group = ((void*)0);
    }

    return group;
}
