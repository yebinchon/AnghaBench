
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_TDES_CTX ;


 int OPENSSL_clear_free (int *,int) ;

void tdes_freectx(void *vctx)
{
    PROV_TDES_CTX *ctx = (PROV_TDES_CTX *)vctx;

    OPENSSL_clear_free(ctx, sizeof(*ctx));
}
