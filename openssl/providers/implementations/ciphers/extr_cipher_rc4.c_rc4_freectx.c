
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_RC4_CTX ;


 int OPENSSL_clear_free (int *,int) ;

__attribute__((used)) static void rc4_freectx(void *vctx)
{
    PROV_RC4_CTX *ctx = (PROV_RC4_CTX *)vctx;

    OPENSSL_clear_free(ctx, sizeof(*ctx));
}
