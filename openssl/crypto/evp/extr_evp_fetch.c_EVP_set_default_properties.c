
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_METHOD_STORE ;
typedef int OPENSSL_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_F_EVP_SET_DEFAULT_PROPERTIES ;
 int EVPerr (int ,int ) ;
 int * get_evp_method_store (int *) ;
 int ossl_method_store_set_global_properties (int *,char const*) ;

int EVP_set_default_properties(OPENSSL_CTX *libctx, const char *propq)
{
    OSSL_METHOD_STORE *store = get_evp_method_store(libctx);

    if (store != ((void*)0))
        return ossl_method_store_set_global_properties(store, propq);
    EVPerr(EVP_F_EVP_SET_DEFAULT_PROPERTIES, ERR_R_INTERNAL_ERROR);
    return 0;
}
