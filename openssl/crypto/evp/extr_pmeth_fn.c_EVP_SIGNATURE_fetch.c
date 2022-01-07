
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_SIGNATURE ;


 scalar_t__ EVP_SIGNATURE_free ;
 scalar_t__ EVP_SIGNATURE_up_ref ;
 int OSSL_OP_SIGNATURE ;
 int * evp_generic_fetch (int *,int ,char const*,char const*,int ,int (*) (void*),void (*) (void*)) ;
 int evp_signature_from_dispatch ;

EVP_SIGNATURE *EVP_SIGNATURE_fetch(OPENSSL_CTX *ctx, const char *algorithm,
                                   const char *properties)
{
    return evp_generic_fetch(ctx, OSSL_OP_SIGNATURE, algorithm, properties,
                             evp_signature_from_dispatch,
                             (int (*)(void *))EVP_SIGNATURE_up_ref,
                             (void (*)(void *))EVP_SIGNATURE_free);
}
