
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int BN_set_flags (int *,int ) ;
 size_t OSSL_NELEM (int **) ;
 int TEST_ptr (int *) ;

__attribute__((used)) static int test_ctx_set_ct_flag(BN_CTX *c)
{
    int st = 0;
    size_t i;
    BIGNUM *b[15];

    BN_CTX_start(c);
    for (i = 0; i < OSSL_NELEM(b); i++) {
        if (!TEST_ptr(b[i] = BN_CTX_get(c)))
            goto err;
        if (i % 2 == 1)
            BN_set_flags(b[i], BN_FLG_CONSTTIME);
    }

    st = 1;
 err:
    BN_CTX_end(c);
    return st;
}
