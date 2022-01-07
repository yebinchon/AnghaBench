
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TLS1_PRF ;


 int OPENSSL_free (int *) ;
 int kdf_tls1_prf_reset (int *) ;

__attribute__((used)) static void kdf_tls1_prf_free(void *vctx)
{
    TLS1_PRF *ctx = (TLS1_PRF *)vctx;

    kdf_tls1_prf_reset(ctx);
    OPENSSL_free(ctx);
}
