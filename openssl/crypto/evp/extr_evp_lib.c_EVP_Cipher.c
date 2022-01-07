
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cipher; int provctx; } ;
struct TYPE_6__ {int (* cupdate ) (int ,unsigned char*,size_t*,unsigned int,unsigned char const*,size_t) ;int (* cfinal ) (int ,unsigned char*,size_t*,size_t) ;int (* do_cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,unsigned int) ;scalar_t__ (* ccipher ) (int ,unsigned char*,size_t*,unsigned int,unsigned char const*,size_t) ;int * prov; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 size_t EVP_CIPHER_CTX_block_size (TYPE_2__*) ;
 scalar_t__ stub1 (int ,unsigned char*,size_t*,unsigned int,unsigned char const*,size_t) ;
 int stub2 (int ,unsigned char*,size_t*,unsigned int,unsigned char const*,size_t) ;
 int stub3 (int ,unsigned char*,size_t*,size_t) ;
 int stub4 (TYPE_2__*,unsigned char*,unsigned char const*,unsigned int) ;

int EVP_Cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
               const unsigned char *in, unsigned int inl)
{
    if (ctx->cipher->prov != ((void*)0)) {







        int ret = -1;
        size_t outl = 0;
        size_t blocksize = EVP_CIPHER_CTX_block_size(ctx);

        if (ctx->cipher->ccipher != ((void*)0))
            ret = ctx->cipher->ccipher(ctx->provctx, out, &outl,
                                        inl + (blocksize == 1 ? 0 : blocksize),
                                        in, (size_t)inl)
                ? (int)outl : -1;
        else if (in != ((void*)0))
            ret = ctx->cipher->cupdate(ctx->provctx, out, &outl,
                                       inl + (blocksize == 1 ? 0 : blocksize),
                                       in, (size_t)inl);
        else
            ret = ctx->cipher->cfinal(ctx->provctx, out, &outl,
                                      blocksize == 1 ? 0 : blocksize);

        return ret;
    }

    return ctx->cipher->do_cipher(ctx, out, in, inl);
}
