
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_KDF ;


 int OSSL_OP_KDF ;
 int * evp_generic_fetch (int *,int ,char const*,char const*,int ,int ,int ) ;
 int evp_kdf_free ;
 int evp_kdf_from_dispatch ;
 int evp_kdf_up_ref ;

EVP_KDF *EVP_KDF_fetch(OPENSSL_CTX *libctx, const char *algorithm,
                       const char *properties)
{
    return evp_generic_fetch(libctx, OSSL_OP_KDF, algorithm, properties,
                             evp_kdf_from_dispatch, evp_kdf_up_ref,
                             evp_kdf_free);
}
