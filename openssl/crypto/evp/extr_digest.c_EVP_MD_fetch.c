
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_MD ;


 int OSSL_OP_DIGEST ;
 int * evp_generic_fetch (int *,int ,char const*,char const*,int ,int ,int ) ;
 int evp_md_free ;
 int evp_md_from_dispatch ;
 int evp_md_up_ref ;

EVP_MD *EVP_MD_fetch(OPENSSL_CTX *ctx, const char *algorithm,
                     const char *properties)
{
    EVP_MD *md =
        evp_generic_fetch(ctx, OSSL_OP_DIGEST, algorithm, properties,
                          evp_md_from_dispatch, evp_md_up_ref, evp_md_free);

    return md;
}
