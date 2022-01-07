
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_data_st {int digest; int ctx; } ;
typedef int EVP_MD ;


 int HMAC_Init_ex (int ,int *,int ,int const*,int ) ;
 int ossl_prov_digest_engine (int *) ;
 int * ossl_prov_digest_md (int *) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static int hmac_init(void *vmacctx)
{
    struct hmac_data_st *macctx = vmacctx;
    const EVP_MD *digest = ossl_prov_digest_md(&macctx->digest);
    int rv = 1;


    if (digest != ((void*)0))
        rv = HMAC_Init_ex(macctx->ctx, ((void*)0), 0, digest,
                          ossl_prov_digest_engine(&macctx->digest));
    ossl_prov_digest_reset(&macctx->digest);
    return rv;
}
