
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int digest; } ;
typedef TYPE_1__ KDF_HKDF ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 scalar_t__ EVP_KDF_HKDF_MODE_EXTRACT_ONLY ;
 int EVP_MD_size (int const*) ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 size_t SIZE_MAX ;
 int * ossl_prov_digest_md (int *) ;

__attribute__((used)) static size_t kdf_hkdf_size(KDF_HKDF *ctx)
{
    int sz;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);

    if (ctx->mode != EVP_KDF_HKDF_MODE_EXTRACT_ONLY)
        return SIZE_MAX;

    if (md == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    sz = EVP_MD_size(md);
    if (sz < 0)
        return 0;

    return sz;
}
