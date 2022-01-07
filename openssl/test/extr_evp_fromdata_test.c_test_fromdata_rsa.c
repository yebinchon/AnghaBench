
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 size_t D ;
 size_t DP ;
 size_t DQ ;
 size_t E ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_provided (int *,char*,int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_fromdata (int *,int **,int *) ;
 int EVP_PKEY_key_fromdata_init (int *) ;
 size_t N ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_ulong (int ,unsigned long*) ;
 int OSSL_PKEY_PARAM_RSA_COEFFICIENT ;
 int OSSL_PKEY_PARAM_RSA_D ;
 int OSSL_PKEY_PARAM_RSA_E ;
 int OSSL_PKEY_PARAM_RSA_EXPONENT ;
 int OSSL_PKEY_PARAM_RSA_FACTOR ;
 int OSSL_PKEY_PARAM_RSA_N ;
 size_t P ;
 size_t Q ;
 size_t QINV ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_fromdata_rsa(void)
{
    int ret = 0;
    EVP_PKEY_CTX *ctx = ((void*)0);
    EVP_PKEY *pk = ((void*)0);






    static unsigned long key_numbers[] = {
        0xbc747fc5,
        0x10001,
        0x7b133399,
        0xe963,
        0xceb7,
        0x8599,
        0xbd87,
        0xcc3b,
    };
    OSSL_PARAM fromdata_params[] = {
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_N, &key_numbers[N]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_E, &key_numbers[E]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_D, &key_numbers[D]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_FACTOR, &key_numbers[P]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_FACTOR, &key_numbers[Q]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_EXPONENT, &key_numbers[DP]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_EXPONENT, &key_numbers[DQ]),
        OSSL_PARAM_ulong(OSSL_PKEY_PARAM_RSA_COEFFICIENT, &key_numbers[QINV]),
        OSSL_PARAM_END
    };

    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new_provided(((void*)0), "RSA", ((void*)0))))
        goto err;

    if (!TEST_true(EVP_PKEY_key_fromdata_init(ctx))
        || !TEST_true(EVP_PKEY_fromdata(ctx, &pk, fromdata_params)))
        goto err;







    ret = 1;

 err:
    EVP_PKEY_free(pk);
    EVP_PKEY_CTX_free(ctx);

    return ret;
}
