
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KDF_SSHKDF ;


 int OPENSSL_free (int *) ;
 int kdf_sshkdf_reset (int *) ;

__attribute__((used)) static void kdf_sshkdf_free(void *vctx)
{
    KDF_SSHKDF *ctx = (KDF_SSHKDF *)vctx;

    kdf_sshkdf_reset(ctx);
    OPENSSL_free(ctx);
}
