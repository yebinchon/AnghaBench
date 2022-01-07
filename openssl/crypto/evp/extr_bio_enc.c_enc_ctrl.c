
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ok; int finished; long buf_len; long buf_off; int * cipher; scalar_t__ buf; int cont; } ;
typedef int EVP_CIPHER_CTX ;
typedef TYPE_1__ BIO_ENC_CTX ;
typedef int BIO ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 long BIO_ctrl (int *,int,long,void*) ;
 TYPE_1__* BIO_get_data (int *) ;
 int * BIO_next (int *) ;
 int BIO_set_init (int *,int) ;
 long EVP_CIPHER_CTX_copy (int *,int *) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 long EVP_CipherFinal_ex (int *,unsigned char*,long*) ;
 int EVP_CipherInit_ex (int *,int *,int *,int *,int *,int ) ;
 int enc_write (int *,int *,int ) ;

__attribute__((used)) static long enc_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    BIO *dbio;
    BIO_ENC_CTX *ctx, *dctx;
    long ret = 1;
    int i;
    EVP_CIPHER_CTX **c_ctx;
    BIO *next;

    ctx = BIO_get_data(b);
    next = BIO_next(b);
    if (ctx == ((void*)0))
        return 0;

    switch (cmd) {
    case 132:
        ctx->ok = 1;
        ctx->finished = 0;
        if (!EVP_CipherInit_ex(ctx->cipher, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               EVP_CIPHER_CTX_encrypting(ctx->cipher)))
            return 0;
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 135:
        if (ctx->cont <= 0)
            ret = 1;
        else
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 131:
        ret = ctx->buf_len - ctx->buf_off;
        if (ret <= 0)
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 133:
        ret = ctx->buf_len - ctx->buf_off;
        if (ret <= 0)
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 134:

 again:
        while (ctx->buf_len != ctx->buf_off) {
            i = enc_write(b, ((void*)0), 0);
            if (i < 0)
                return i;
        }

        if (!ctx->finished) {
            ctx->finished = 1;
            ctx->buf_off = 0;
            ret = EVP_CipherFinal_ex(ctx->cipher,
                                     (unsigned char *)ctx->buf,
                                     &(ctx->buf_len));
            ctx->ok = (int)ret;
            if (ret <= 0)
                break;


            goto again;
        }


        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 128:
        ret = (long)ctx->ok;
        break;
    case 130:
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(next, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;
    case 129:
        c_ctx = (EVP_CIPHER_CTX **)ptr;
        *c_ctx = ctx->cipher;
        BIO_set_init(b, 1);
        break;
    case 136:
        dbio = (BIO *)ptr;
        dctx = BIO_get_data(dbio);
        dctx->cipher = EVP_CIPHER_CTX_new();
        if (dctx->cipher == ((void*)0))
            return 0;
        ret = EVP_CIPHER_CTX_copy(dctx->cipher, ctx->cipher);
        if (ret)
            BIO_set_init(dbio, 1);
        break;
    default:
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    }
    return ret;
}
