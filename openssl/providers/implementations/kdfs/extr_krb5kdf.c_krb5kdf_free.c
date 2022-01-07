
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KRB5KDF_CTX ;


 int OPENSSL_free (int *) ;
 int krb5kdf_reset (int *) ;

__attribute__((used)) static void krb5kdf_free(void *vctx)
{
    KRB5KDF_CTX *ctx = (KRB5KDF_CTX *)vctx;

    krb5kdf_reset(ctx);
    OPENSSL_free(ctx);
}
