
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_CTX_secure_new () ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int test_ctx_check_ct_flag (int *) ;
 int test_ctx_set_ct_flag (int *) ;

__attribute__((used)) static int test_ctx_consttime_flag(void)
{
    BN_CTX *nctx = ((void*)0);
    BN_CTX *sctx = ((void*)0);
    size_t i = 0;
    int st = 0;

    if (!TEST_ptr(nctx = BN_CTX_new())
            || !TEST_ptr(sctx = BN_CTX_secure_new()))
        goto err;

    for (i = 0; i < 2; i++) {
        BN_CTX *c = i == 0 ? nctx : sctx;
        if (!TEST_true(test_ctx_set_ct_flag(c))
                || !TEST_true(test_ctx_check_ct_flag(c)))
            goto err;
    }

    st = 1;
 err:
    BN_CTX_free(nctx);
    BN_CTX_free(sctx);
    return st;
}
