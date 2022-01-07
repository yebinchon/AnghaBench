
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_METHOD_STORE ;
typedef int OPENSSL_CTX ;


 int OPENSSL_CTX_EVP_METHOD_STORE_INDEX ;
 int evp_method_store_method ;
 int * openssl_ctx_get_data (int *,int ,int *) ;

__attribute__((used)) static OSSL_METHOD_STORE *get_evp_method_store(OPENSSL_CTX *libctx)
{
    return openssl_ctx_get_data(libctx, OPENSSL_CTX_EVP_METHOD_STORE_INDEX,
                                &evp_method_store_method);
}
