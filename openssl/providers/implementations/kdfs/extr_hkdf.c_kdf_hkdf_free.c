
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KDF_HKDF ;


 int OPENSSL_free (int *) ;
 int kdf_hkdf_reset (int *) ;

__attribute__((used)) static void kdf_hkdf_free(void *vctx)
{
    KDF_HKDF *ctx = (KDF_HKDF *)vctx;

    kdf_hkdf_reset(ctx);
    OPENSSL_free(ctx);
}
