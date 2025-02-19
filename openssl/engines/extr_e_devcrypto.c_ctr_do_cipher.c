
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_ctx {size_t num; int* partial; int blocksize; } ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int cipher_do_cipher (int *,unsigned char*,unsigned char const*,size_t) ;
 int memset (int*,int ,size_t) ;

__attribute__((used)) static int ctr_do_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                         const unsigned char *in, size_t inl)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
    size_t nblocks, len;


    while (cipher_ctx->num && inl) {
        (*out++) = *(in++) ^ cipher_ctx->partial[cipher_ctx->num];
        --inl;
        cipher_ctx->num = (cipher_ctx->num + 1) % cipher_ctx->blocksize;
    }


    if (inl > (unsigned int) cipher_ctx->blocksize) {
        nblocks = inl/cipher_ctx->blocksize;
        len = nblocks * cipher_ctx->blocksize;
        if (cipher_do_cipher(ctx, out, in, len) < 1)
            return 0;
        inl -= len;
        out += len;
        in += len;
    }


    if (inl) {
        memset(cipher_ctx->partial, 0, cipher_ctx->blocksize);
        if (cipher_do_cipher(ctx, cipher_ctx->partial, cipher_ctx->partial,
            cipher_ctx->blocksize) < 1)
            return 0;
        while (inl--) {
            out[cipher_ctx->num] = in[cipher_ctx->num]
                                   ^ cipher_ctx->partial[cipher_ctx->num];
            cipher_ctx->num++;
        }
    }

    return 1;
}
