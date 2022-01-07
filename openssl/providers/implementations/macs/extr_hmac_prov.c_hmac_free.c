
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_data_st {int digest; int ctx; } ;


 int HMAC_CTX_free (int ) ;
 int OPENSSL_free (struct hmac_data_st*) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void hmac_free(void *vmacctx)
{
    struct hmac_data_st *macctx = vmacctx;

    if (macctx != ((void*)0)) {
        HMAC_CTX_free(macctx->ctx);
        ossl_prov_digest_reset(&macctx->digest);
        OPENSSL_free(macctx);
    }
}
