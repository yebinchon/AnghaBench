
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_ctx {int sess; } ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int clean_devcrypto_session (int *) ;

__attribute__((used)) static int cipher_cleanup(EVP_CIPHER_CTX *ctx)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);

    return clean_devcrypto_session(&cipher_ctx->sess);
}
