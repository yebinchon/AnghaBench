
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_CIPHER ;


 int OSSL_OP_CIPHER ;
 int evp_cipher_free ;
 int evp_cipher_from_dispatch ;
 int evp_cipher_up_ref ;
 int * evp_generic_fetch (int *,int ,char const*,char const*,int ,int ,int ) ;

EVP_CIPHER *EVP_CIPHER_fetch(OPENSSL_CTX *ctx, const char *algorithm,
                             const char *properties)
{
    EVP_CIPHER *cipher =
        evp_generic_fetch(ctx, OSSL_OP_CIPHER, algorithm, properties,
                          evp_cipher_from_dispatch, evp_cipher_up_ref,
                          evp_cipher_free);

    return cipher;
}
