
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digest; } ;
typedef TYPE_1__ KDF_X942 ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_MD_size (int const*) ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 int * ossl_prov_digest_md (int *) ;

__attribute__((used)) static size_t x942kdf_size(KDF_X942 *ctx)
{
    int len;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);

    if (md == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    len = EVP_MD_size(md);
    return (len <= 0) ? 0 : (size_t)len;
}
