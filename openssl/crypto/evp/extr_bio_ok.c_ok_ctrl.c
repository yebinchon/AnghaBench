
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long buf_len; long buf_off; int cont; int finished; int sigio; int md; int blockout; int buf_off_save; int buf_len_save; } ;
typedef int EVP_MD ;
typedef TYPE_1__ BIO_OK_CTX ;
typedef int BIO ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 long BIO_ctrl (int *,int,long,void*) ;
 TYPE_1__* BIO_get_data (int *) ;
 int BIO_get_init (int *) ;
 int * BIO_next (int *) ;
 int BIO_set_init (int *,int) ;
 int EVP_DigestInit_ex (int ,int *,int *) ;
 int * EVP_MD_CTX_md (int ) ;
 int block_out (int *) ;
 int ok_write (int *,int *,int ) ;

__attribute__((used)) static long ok_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    BIO_OK_CTX *ctx;
    EVP_MD *md;
    const EVP_MD **ppmd;
    long ret = 1;
    int i;
    BIO *next;

    ctx = BIO_get_data(b);
    next = BIO_next(b);

    switch (cmd) {
    case 132:
        ctx->buf_len = 0;
        ctx->buf_off = 0;
        ctx->buf_len_save = 0;
        ctx->buf_off_save = 0;
        ctx->cont = 1;
        ctx->finished = 0;
        ctx->blockout = 0;
        ctx->sigio = 1;
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 136:
        if (ctx->cont <= 0)
            ret = 1;
        else
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 133:
    case 131:
        ret = ctx->blockout ? ctx->buf_len - ctx->buf_off : 0;
        if (ret <= 0)
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 135:

        if (ctx->blockout == 0)
            if (!block_out(b))
                return 0;

        while (ctx->blockout) {
            i = ok_write(b, ((void*)0), 0);
            if (i < 0) {
                ret = i;
                break;
            }
        }

        ctx->finished = 1;
        ctx->buf_off = ctx->buf_len = 0;
        ctx->cont = (int)ret;


        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 130:
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(next, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;
    case 134:
        ret = (long)ctx->cont;
        break;
    case 128:
        md = ptr;
        if (!EVP_DigestInit_ex(ctx->md, md, ((void*)0)))
            return 0;
        BIO_set_init(b, 1);
        break;
    case 129:
        if (BIO_get_init(b)) {
            ppmd = ptr;
            *ppmd = EVP_MD_CTX_md(ctx->md);
        } else
            ret = 0;
        break;
    default:
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    }
    return ret;
}
