
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; int final_used; unsigned char* final; int buf_len; TYPE_1__* cipher; int provctx; scalar_t__ encrypt; } ;
struct TYPE_8__ {int (* cupdate ) (int ,unsigned char*,size_t*,int,unsigned char const*,size_t) ;unsigned int block_size; int flags; int (* do_cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,int) ;int * prov; } ;
typedef scalar_t__ PTRDIFF_T ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_block_size (TYPE_2__*) ;
 scalar_t__ EVP_CIPHER_CTX_test_flags (TYPE_2__*,int ) ;
 int EVP_CIPH_FLAG_CUSTOM_CIPHER ;
 int EVP_CIPH_FLAG_LENGTH_BITS ;
 int EVP_CIPH_NO_PADDING ;
 int EVP_F_EVP_DECRYPTUPDATE ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_NO_CIPHER_SET ;
 int EVP_R_PARTIALLY_OVERLAPPING ;
 int EVP_R_UPDATE_ERROR ;
 int EVPerr (int ,int ) ;
 size_t INT_MAX ;
 int OPENSSL_assert (int) ;
 int evp_EncryptDecryptUpdate (TYPE_2__*,unsigned char*,int*,unsigned char const*,int) ;
 scalar_t__ is_partially_overlapping (unsigned char*,unsigned char const*,unsigned int) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int stub1 (int ,unsigned char*,size_t*,int,unsigned char const*,size_t) ;
 int stub2 (TYPE_2__*,unsigned char*,unsigned char const*,int) ;

int EVP_DecryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl)
{
    int fix_len, cmpl = inl, ret;
    unsigned int b;
    size_t soutl;
    int blocksize;


    if (ctx->encrypt) {
        EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_INVALID_OPERATION);
        return 0;
    }

    if (ctx->cipher == ((void*)0)) {
        EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_NO_CIPHER_SET);
        return 0;
    }
    if (ctx->cipher->prov == ((void*)0))
        goto legacy;

    blocksize = EVP_CIPHER_CTX_block_size(ctx);

    if (ctx->cipher->cupdate == ((void*)0) || blocksize < 1) {
        EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_UPDATE_ERROR);
        return 0;
    }
    ret = ctx->cipher->cupdate(ctx->provctx, out, &soutl,
                               inl + (blocksize == 1 ? 0 : blocksize), in,
                               (size_t)inl);

    if (ret) {
        if (soutl > INT_MAX) {
            EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_UPDATE_ERROR);
            return 0;
        }
        *outl = soutl;
    }

    return ret;


 legacy:

    b = ctx->cipher->block_size;

    if (EVP_CIPHER_CTX_test_flags(ctx, EVP_CIPH_FLAG_LENGTH_BITS))
        cmpl = (cmpl + 7) / 8;

    if (ctx->cipher->flags & EVP_CIPH_FLAG_CUSTOM_CIPHER) {
        if (b == 1 && is_partially_overlapping(out, in, cmpl)) {
            EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }

        fix_len = ctx->cipher->do_cipher(ctx, out, in, inl);
        if (fix_len < 0) {
            *outl = 0;
            return 0;
        } else
            *outl = fix_len;
        return 1;
    }

    if (inl <= 0) {
        *outl = 0;
        return inl == 0;
    }

    if (ctx->flags & EVP_CIPH_NO_PADDING)
        return evp_EncryptDecryptUpdate(ctx, out, outl, in, inl);

    OPENSSL_assert(b <= sizeof(ctx->final));

    if (ctx->final_used) {

        if (((PTRDIFF_T)out == (PTRDIFF_T)in)
            || is_partially_overlapping(out, in, b)) {
            EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }
        memcpy(out, ctx->final, b);
        out += b;
        fix_len = 1;
    } else
        fix_len = 0;

    if (!evp_EncryptDecryptUpdate(ctx, out, outl, in, inl))
        return 0;





    if (b > 1 && !ctx->buf_len) {
        *outl -= b;
        ctx->final_used = 1;
        memcpy(ctx->final, &out[*outl], b);
    } else
        ctx->final_used = 0;

    if (fix_len)
        *outl += b;

    return 1;
}
