
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CHACHA20_POLY1305_CTX ;


 int OPENSSL_clear_free (int *,int) ;

__attribute__((used)) static void chacha20_poly1305_freectx(void *vctx)
{
    PROV_CHACHA20_POLY1305_CTX *ctx = (PROV_CHACHA20_POLY1305_CTX *)vctx;

    if (ctx != ((void*)0))
        OPENSSL_clear_free(ctx, sizeof(*ctx));
}
