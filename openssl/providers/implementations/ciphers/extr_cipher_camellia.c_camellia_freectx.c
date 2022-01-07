
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CAMELLIA_CTX ;


 int OPENSSL_clear_free (int *,int) ;

__attribute__((used)) static void camellia_freectx(void *vctx)
{
    PROV_CAMELLIA_CTX *ctx = (PROV_CAMELLIA_CTX *)vctx;

    OPENSSL_clear_free(ctx, sizeof(*ctx));
}
