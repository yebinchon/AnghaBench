
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_ARIA_GCM_CTX ;


 int OPENSSL_clear_free (int *,int) ;

__attribute__((used)) static void aria_gcm_freectx(void *vctx)
{
    PROV_ARIA_GCM_CTX *ctx = (PROV_ARIA_GCM_CTX *)vctx;

    OPENSSL_clear_free(ctx, sizeof(*ctx));
}
