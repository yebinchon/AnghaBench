
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_len; int buf_off; int buf_len_save; size_t buf_off_save; int sigio; scalar_t__ cont; int * buf; scalar_t__ blockout; } ;
typedef TYPE_1__ BIO_OK_CTX ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 scalar_t__ BIO_get_init (int *) ;
 int * BIO_next (int *) ;
 int BIO_read (int *,int *,int) ;
 int IOBS ;
 int block_in (int *) ;
 int memcpy (char*,int *,int) ;
 int memmove (int *,int *,int) ;
 int sig_in (int *) ;

__attribute__((used)) static int ok_read(BIO *b, char *out, int outl)
{
    int ret = 0, i, n;
    BIO_OK_CTX *ctx;
    BIO *next;

    if (out == ((void*)0))
        return 0;

    ctx = BIO_get_data(b);
    next = BIO_next(b);

    if ((ctx == ((void*)0)) || (next == ((void*)0)) || (BIO_get_init(b) == 0))
        return 0;

    while (outl > 0) {


        if (ctx->blockout) {
            i = ctx->buf_len - ctx->buf_off;
            if (i > outl)
                i = outl;
            memcpy(out, &(ctx->buf[ctx->buf_off]), i);
            ret += i;
            out += i;
            outl -= i;
            ctx->buf_off += i;


            if (ctx->buf_len == ctx->buf_off) {
                ctx->buf_off = 0;




                if (ctx->buf_len_save - ctx->buf_off_save > 0) {
                    ctx->buf_len = ctx->buf_len_save - ctx->buf_off_save;
                    memmove(ctx->buf, &(ctx->buf[ctx->buf_off_save]),
                            ctx->buf_len);
                } else {
                    ctx->buf_len = 0;
                }
                ctx->blockout = 0;
            }
        }


        if (outl == 0)
            break;


        n = IOBS - ctx->buf_len;
        i = BIO_read(next, &(ctx->buf[ctx->buf_len]), n);

        if (i <= 0)
            break;

        ctx->buf_len += i;


        if (ctx->sigio == 1) {
            if (!sig_in(b)) {
                BIO_clear_retry_flags(b);
                return 0;
            }
        }


        if (ctx->sigio == 0) {
            if (!block_in(b)) {
                BIO_clear_retry_flags(b);
                return 0;
            }
        }


        if (ctx->cont <= 0)
            break;

    }

    BIO_clear_retry_flags(b);
    BIO_copy_next_retry(b);
    return ret;
}
