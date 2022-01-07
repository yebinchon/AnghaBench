
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int buf_len; int flags; int* buf; TYPE_1__* cipher; int provctx; int encrypt; } ;
struct TYPE_7__ {int (* cfinal ) (int ,unsigned char*,size_t*,int) ;int flags; int (* do_cipher ) (TYPE_2__*,unsigned char*,int*,unsigned int) ;unsigned int block_size; int * prov; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_block_size (TYPE_2__*) ;
 int EVP_CIPH_FLAG_CUSTOM_CIPHER ;
 int EVP_CIPH_NO_PADDING ;
 int EVP_F_EVP_ENCRYPTFINAL_EX ;
 int EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH ;
 int EVP_R_FINAL_ERROR ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_NO_CIPHER_SET ;
 int EVPerr (int ,int ) ;
 size_t INT_MAX ;
 int OPENSSL_assert (int) ;
 int stub1 (int ,unsigned char*,size_t*,int) ;
 int stub2 (TYPE_2__*,unsigned char*,int*,unsigned int) ;
 int stub3 (TYPE_2__*,unsigned char*,int*,unsigned int) ;

int EVP_EncryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl)
{
    int n, ret;
    unsigned int i, b, bl;
    size_t soutl;
    int blocksize;


    if (!ctx->encrypt) {
        EVPerr(EVP_F_EVP_ENCRYPTFINAL_EX, EVP_R_INVALID_OPERATION);
        return 0;
    }

    if (ctx->cipher == ((void*)0)) {
        EVPerr(EVP_F_EVP_ENCRYPTFINAL_EX, EVP_R_NO_CIPHER_SET);
        return 0;
    }
    if (ctx->cipher->prov == ((void*)0))
        goto legacy;

    blocksize = EVP_CIPHER_CTX_block_size(ctx);

    if (blocksize < 1 || ctx->cipher->cfinal == ((void*)0)) {
        EVPerr(EVP_F_EVP_ENCRYPTFINAL_EX, EVP_R_FINAL_ERROR);
        return 0;
    }

    ret = ctx->cipher->cfinal(ctx->provctx, out, &soutl,
                              blocksize == 1 ? 0 : blocksize);

    if (ret) {
        if (soutl > INT_MAX) {
            EVPerr(EVP_F_EVP_ENCRYPTFINAL_EX, EVP_R_FINAL_ERROR);
            return 0;
        }
        *outl = soutl;
    }

    return ret;


 legacy:

    if (ctx->cipher->flags & EVP_CIPH_FLAG_CUSTOM_CIPHER) {
        ret = ctx->cipher->do_cipher(ctx, out, ((void*)0), 0);
        if (ret < 0)
            return 0;
        else
            *outl = ret;
        return 1;
    }

    b = ctx->cipher->block_size;
    OPENSSL_assert(b <= sizeof(ctx->buf));
    if (b == 1) {
        *outl = 0;
        return 1;
    }
    bl = ctx->buf_len;
    if (ctx->flags & EVP_CIPH_NO_PADDING) {
        if (bl) {
            EVPerr(EVP_F_EVP_ENCRYPTFINAL_EX,
                   EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH);
            return 0;
        }
        *outl = 0;
        return 1;
    }

    n = b - bl;
    for (i = bl; i < b; i++)
        ctx->buf[i] = n;
    ret = ctx->cipher->do_cipher(ctx, out, ctx->buf, b);

    if (ret)
        *outl = b;

    return ret;
}
