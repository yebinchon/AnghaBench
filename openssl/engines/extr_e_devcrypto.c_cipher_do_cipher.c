
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char uint8_t ;
struct crypt_op {size_t len; scalar_t__ flags; int op; void* iv; void* dst; void* src; int ses; } ;
struct TYPE_2__ {int ses; } ;
struct cipher_ctx {int mode; size_t blocksize; int op; TYPE_1__ sess; } ;
typedef int cryp ;
typedef int EVP_CIPHER_CTX ;


 int CIOCCRYPT ;
 scalar_t__ COP_FLAG_WRITE_IV ;
 int ERR_LIB_SYS ;
 int ERR_raise_data (int ,int ,char*) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 size_t EVP_CIPHER_CTX_iv_length (int *) ;
 unsigned char* EVP_CIPHER_CTX_iv_noconst (int *) ;


 int EVP_MAX_IV_LENGTH ;
 int assert (int) ;
 int cfd ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct crypt_op*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (struct crypt_op*,int ,int) ;

__attribute__((used)) static int cipher_do_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            const unsigned char *in, size_t inl)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
    struct crypt_op cryp;
    unsigned char *iv = EVP_CIPHER_CTX_iv_noconst(ctx);

    unsigned char saved_iv[EVP_MAX_IV_LENGTH];
    const unsigned char *ivptr;
    size_t nblocks, ivlen;


    memset(&cryp, 0, sizeof(cryp));
    cryp.ses = cipher_ctx->sess.ses;
    cryp.len = inl;
    cryp.src = (void *)in;
    cryp.dst = (void *)out;
    cryp.iv = (void *)iv;
    cryp.op = cipher_ctx->op;

    cryp.flags = 0;

    ivlen = EVP_CIPHER_CTX_iv_length(ctx);
    if (ivlen > 0)
        switch (cipher_ctx->mode) {
        case 129:
            assert(inl >= ivlen);
            if (!EVP_CIPHER_CTX_encrypting(ctx)) {
                ivptr = in + inl - ivlen;
                memcpy(saved_iv, ivptr, ivlen);
            }
            break;

        case 128:
            break;

        default:
            return 0;
        }




    if (ioctl(cfd, CIOCCRYPT, &cryp) < 0) {
        ERR_raise_data(ERR_LIB_SYS, errno, "calling ioctl()");
        return 0;
    }


    if (ivlen > 0)
        switch (cipher_ctx->mode) {
        case 129:
            assert(inl >= ivlen);
            if (EVP_CIPHER_CTX_encrypting(ctx))
                ivptr = out + inl - ivlen;
            else
                ivptr = saved_iv;

            memcpy(iv, ivptr, ivlen);
            break;

        case 128:
            nblocks = (inl + cipher_ctx->blocksize - 1)
                      / cipher_ctx->blocksize;
            do {
                ivlen--;
                nblocks += iv[ivlen];
                iv[ivlen] = (uint8_t) nblocks;
                nblocks >>= 8;
            } while (ivlen);
            break;

        default:
            return 0;
        }


    return 1;
}
