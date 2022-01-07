
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int * OPENSSL_CTX_new () ;
 int * OSSL_PROVIDER_load (int *,char*) ;
 int TEST_ptr (int *) ;
 char* test_get_argument (size_t) ;
 size_t test_get_argument_count () ;

__attribute__((used)) static int load_providers(OPENSSL_CTX **libctx, OSSL_PROVIDER *prov[])
{
    OPENSSL_CTX *ctx;
    int ret = 0;
    size_t i;

    ctx = OPENSSL_CTX_new();
    if (!TEST_ptr(ctx))
        goto err;

    if (test_get_argument_count() > 2)
        goto err;

    for (i = 0; i < test_get_argument_count(); ++i) {
        char *provname = test_get_argument(i);
        prov[i] = OSSL_PROVIDER_load(ctx, provname);
        if (!TEST_ptr(prov[i]))
            goto err;
    }
    ret = 1;
    *libctx = ctx;
err:
    return ret;
}
