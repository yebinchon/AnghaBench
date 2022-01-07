
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int DRBG_GLOBAL ;


 int OPENSSL_CTX_DRBG_INDEX ;
 int drbg_ossl_ctx_method ;
 int * openssl_ctx_get_data (int *,int ,int *) ;

__attribute__((used)) static DRBG_GLOBAL *drbg_get_global(OPENSSL_CTX *libctx)
{
    return openssl_ctx_get_data(libctx, OPENSSL_CTX_DRBG_INDEX,
                                &drbg_ossl_ctx_method);
}
