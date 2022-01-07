
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlast_block; unsigned char* last_block; unsigned char* k1; unsigned char* k2; int cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 int EVP_CIPHER_CTX_block_size (int ) ;
 int EVP_Cipher (int ,unsigned char*,unsigned char*,int) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int memset (int*,int ,int) ;

int CMAC_Final(CMAC_CTX *ctx, unsigned char *out, size_t *poutlen)
{
    int i, bl, lb;

    if (ctx->nlast_block == -1)
        return 0;
    if ((bl = EVP_CIPHER_CTX_block_size(ctx->cctx)) < 0)
        return 0;
    if (poutlen != ((void*)0))
        *poutlen = (size_t)bl;
    if (!out)
        return 1;
    lb = ctx->nlast_block;

    if (lb == bl) {
        for (i = 0; i < bl; i++)
            out[i] = ctx->last_block[i] ^ ctx->k1[i];
    } else {
        ctx->last_block[lb] = 0x80;
        if (bl - lb > 1)
            memset(ctx->last_block + lb + 1, 0, bl - lb - 1);
        for (i = 0; i < bl; i++)
            out[i] = ctx->last_block[i] ^ ctx->k2[i];
    }
    if (!EVP_Cipher(ctx->cctx, out, out, bl)) {
        OPENSSL_cleanse(out, bl);
        return 0;
    }
    return 1;
}
