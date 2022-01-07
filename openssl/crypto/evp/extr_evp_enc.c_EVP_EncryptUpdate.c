
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int provctx; TYPE_1__* cipher; int encrypt; } ;
struct TYPE_6__ {int (* cupdate ) (int ,unsigned char*,size_t*,int,unsigned char const*,size_t) ;int * prov; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_block_size (TYPE_2__*) ;
 int EVP_F_EVP_ENCRYPTUPDATE ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_NO_CIPHER_SET ;
 int EVP_R_UPDATE_ERROR ;
 int EVPerr (int ,int ) ;
 size_t INT_MAX ;
 int evp_EncryptDecryptUpdate (TYPE_2__*,unsigned char*,int*,unsigned char const*,int) ;
 int stub1 (int ,unsigned char*,size_t*,int,unsigned char const*,size_t) ;

int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl)
{
    int ret;
    size_t soutl;
    int blocksize;


    if (!ctx->encrypt) {
        EVPerr(EVP_F_EVP_ENCRYPTUPDATE, EVP_R_INVALID_OPERATION);
        return 0;
    }

    if (ctx->cipher == ((void*)0)) {
        EVPerr(EVP_F_EVP_ENCRYPTUPDATE, EVP_R_NO_CIPHER_SET);
        return 0;
    }

    if (ctx->cipher->prov == ((void*)0))
        goto legacy;

    blocksize = EVP_CIPHER_CTX_block_size(ctx);

    if (ctx->cipher->cupdate == ((void*)0) || blocksize < 1) {
        EVPerr(EVP_F_EVP_ENCRYPTUPDATE, EVP_R_UPDATE_ERROR);
        return 0;
    }
    ret = ctx->cipher->cupdate(ctx->provctx, out, &soutl,
                               inl + (blocksize == 1 ? 0 : blocksize), in,
                               (size_t)inl);

    if (ret) {
        if (soutl > INT_MAX) {
            EVPerr(EVP_F_EVP_ENCRYPTUPDATE, EVP_R_UPDATE_ERROR);
            return 0;
        }
        *outl = soutl;
    }

    return ret;


 legacy:

    return evp_EncryptDecryptUpdate(ctx, out, outl, in, inl);
}
