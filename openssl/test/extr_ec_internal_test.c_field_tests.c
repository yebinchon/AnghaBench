
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_METHOD ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_bin2bn (unsigned char const*,int,int *) ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new (int const*) ;
 int EC_GROUP_set_curve (int *,int *,int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int group_field_tests (int *,int *) ;

__attribute__((used)) static int field_tests(const EC_METHOD *meth, const unsigned char *params,
                       int len)
{
    BN_CTX *ctx = ((void*)0);
    BIGNUM *p = ((void*)0), *a = ((void*)0), *b = ((void*)0);
    EC_GROUP *group = ((void*)0);
    int ret = 0;

    if (!TEST_ptr(ctx = BN_CTX_new()))
        return 0;

    BN_CTX_start(ctx);
    p = BN_CTX_get(ctx);
    a = BN_CTX_get(ctx);
    if (!TEST_ptr(b = BN_CTX_get(ctx))
        || !TEST_ptr(group = EC_GROUP_new(meth))
        || !TEST_true(BN_bin2bn(params, len, p))
        || !TEST_true(BN_bin2bn(params + len, len, a))
        || !TEST_true(BN_bin2bn(params + 2 * len, len, b))
        || !TEST_true(EC_GROUP_set_curve(group, p, a, b, ctx))
        || !group_field_tests(group, ctx))
        goto err;
    ret = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    if (group != ((void*)0))
        EC_GROUP_free(group);
    return ret;
}
