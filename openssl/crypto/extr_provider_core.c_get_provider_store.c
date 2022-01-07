
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct provider_store_st {int dummy; } ;
typedef int OPENSSL_CTX ;


 int CRYPTO_F_GET_PROVIDER_STORE ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_CTX_PROVIDER_STORE_INDEX ;
 struct provider_store_st* openssl_ctx_get_data (int *,int ,int *) ;
 int provider_store_method ;

__attribute__((used)) static struct provider_store_st *get_provider_store(OPENSSL_CTX *libctx)
{
    struct provider_store_st *store = ((void*)0);

    store = openssl_ctx_get_data(libctx, OPENSSL_CTX_PROVIDER_STORE_INDEX,
                                 &provider_store_method);
    if (store == ((void*)0))
        CRYPTOerr(CRYPTO_F_GET_PROVIDER_STORE, ERR_R_INTERNAL_ERROR);
    return store;
}
