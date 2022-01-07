
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KDF_X942 ;


 int OPENSSL_free (int *) ;
 int x942kdf_reset (int *) ;

__attribute__((used)) static void x942kdf_free(void *vctx)
{
    KDF_X942 *ctx = (KDF_X942 *)vctx;

    x942kdf_reset(ctx);
    OPENSSL_free(ctx);
}
