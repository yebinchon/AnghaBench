
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cipher_data; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;
typedef int EVP_CHACHA_AEAD_CTX ;


 int OPENSSL_cleanse (int ,scalar_t__) ;
 scalar_t__ Poly1305_ctx_size () ;
 int * aead_data (TYPE_1__*) ;

__attribute__((used)) static int chacha20_poly1305_cleanup(EVP_CIPHER_CTX *ctx)
{
    EVP_CHACHA_AEAD_CTX *actx = aead_data(ctx);
    if (actx)
        OPENSSL_cleanse(ctx->cipher_data, sizeof(*actx) + Poly1305_ctx_size());
    return 1;
}
