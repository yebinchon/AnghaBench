
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KDF_PBKDF2 ;


 int kdf_pbkdf2_cleanup (int *) ;
 int kdf_pbkdf2_init (int *) ;

__attribute__((used)) static void kdf_pbkdf2_reset(void *vctx)
{
    KDF_PBKDF2 *ctx = (KDF_PBKDF2 *)vctx;

    kdf_pbkdf2_cleanup(ctx);
    kdf_pbkdf2_init(ctx);
}
