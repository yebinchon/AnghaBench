
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA_PSS_PARAMS ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 int EVP_MD_size (int const*) ;
 int * EVP_PKEY_CTX_get0_pkey (int *) ;
 scalar_t__ EVP_PKEY_CTX_get_rsa_mgf1_md (int *,int const**) ;
 int EVP_PKEY_CTX_get_rsa_pss_saltlen (int *,int*) ;
 scalar_t__ EVP_PKEY_CTX_get_signature_md (int *,int const**) ;
 int EVP_PKEY_bits (int *) ;
 int EVP_PKEY_size (int *) ;
 int * rsa_pss_params_create (int const*,int const*,int) ;

__attribute__((used)) static RSA_PSS_PARAMS *rsa_ctx_to_pss(EVP_PKEY_CTX *pkctx)
{
    const EVP_MD *sigmd, *mgf1md;
    EVP_PKEY *pk = EVP_PKEY_CTX_get0_pkey(pkctx);
    int saltlen;

    if (EVP_PKEY_CTX_get_signature_md(pkctx, &sigmd) <= 0)
        return ((void*)0);
    if (EVP_PKEY_CTX_get_rsa_mgf1_md(pkctx, &mgf1md) <= 0)
        return ((void*)0);
    if (!EVP_PKEY_CTX_get_rsa_pss_saltlen(pkctx, &saltlen))
        return ((void*)0);
    if (saltlen == -1) {
        saltlen = EVP_MD_size(sigmd);
    } else if (saltlen == -2 || saltlen == -3) {
        saltlen = EVP_PKEY_size(pk) - EVP_MD_size(sigmd) - 2;
        if ((EVP_PKEY_bits(pk) & 0x7) == 1)
            saltlen--;
        if (saltlen < 0)
            return ((void*)0);
    }

    return rsa_pss_params_create(sigmd, mgf1md, saltlen);
}
