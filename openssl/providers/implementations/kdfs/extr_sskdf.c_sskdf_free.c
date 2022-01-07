
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KDF_SSKDF ;


 int OPENSSL_free (int *) ;
 int sskdf_reset (int *) ;

__attribute__((used)) static void sskdf_free(void *vctx)
{
    KDF_SSKDF *ctx = (KDF_SSKDF *)vctx;

    sskdf_reset(ctx);
    OPENSSL_free(ctx);
}
