
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_KEYEXCH ;


 scalar_t__ EVP_KEYEXCH_free ;
 scalar_t__ EVP_KEYEXCH_up_ref ;
 int OSSL_OP_KEYEXCH ;
 int * evp_generic_fetch (int *,int ,char const*,char const*,int ,int (*) (void*),void (*) (void*)) ;
 int evp_keyexch_from_dispatch ;

EVP_KEYEXCH *EVP_KEYEXCH_fetch(OPENSSL_CTX *ctx, const char *algorithm,
                               const char *properties)
{
    return evp_generic_fetch(ctx, OSSL_OP_KEYEXCH, algorithm, properties,
                             evp_keyexch_from_dispatch,
                             (int (*)(void *))EVP_KEYEXCH_up_ref,
                             (void (*)(void *))EVP_KEYEXCH_free);
}
