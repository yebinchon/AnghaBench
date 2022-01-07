
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
struct cipher_ctx {TYPE_1__ sess; int op; } ;
typedef int EVP_CIPHER_CTX ;


 int COP_ENCRYPT ;
 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int EVP_CIPHER_CTX_iv (int *) ;


 int cipher_init (int *,void*,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int cipher_ctrl(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
    EVP_CIPHER_CTX *to_ctx = (EVP_CIPHER_CTX *)p2;
    struct cipher_ctx *to_cipher_ctx;

    switch (type) {

    case 129:
        if (cipher_ctx == ((void*)0))
            return 1;

        to_cipher_ctx =
            (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(to_ctx);
        memset(&to_cipher_ctx->sess, 0, sizeof(to_cipher_ctx->sess));
        return cipher_init(to_ctx, (void *)cipher_ctx->sess.key, EVP_CIPHER_CTX_iv(ctx),
                           (cipher_ctx->op == COP_ENCRYPT));

    case 128:
        memset(&cipher_ctx->sess, 0, sizeof(cipher_ctx->sess));
        return 1;

    default:
        break;
    }

    return -1;
}
