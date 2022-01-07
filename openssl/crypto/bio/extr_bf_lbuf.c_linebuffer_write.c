
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * next_bio; scalar_t__ ptr; } ;
struct TYPE_6__ {int obuf_size; int obuf_len; char const* obuf; } ;
typedef TYPE_1__ BIO_LINEBUFFER_CTX ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_copy_next_retry (TYPE_2__*) ;
 int BIO_write (int *,char const*,int) ;
 int memcpy (char const*,char const*,int) ;
 int memmove (char const*,char const*,int) ;

__attribute__((used)) static int linebuffer_write(BIO *b, const char *in, int inl)
{
    int i, num = 0, foundnl;
    BIO_LINEBUFFER_CTX *ctx;

    if ((in == ((void*)0)) || (inl <= 0))
        return 0;
    ctx = (BIO_LINEBUFFER_CTX *)b->ptr;
    if ((ctx == ((void*)0)) || (b->next_bio == ((void*)0)))
        return 0;

    BIO_clear_retry_flags(b);

    do {
        const char *p;
        char c;

        for (p = in, c = '\0'; p < in + inl && (c = *p) != '\n'; p++) ;
        if (c == '\n') {
            p++;
            foundnl = 1;
        } else
            foundnl = 0;





        while ((foundnl || p - in > ctx->obuf_size - ctx->obuf_len)
               && ctx->obuf_len > 0) {
            int orig_olen = ctx->obuf_len;

            i = ctx->obuf_size - ctx->obuf_len;
            if (p - in > 0) {
                if (i >= p - in) {
                    memcpy(&(ctx->obuf[ctx->obuf_len]), in, p - in);
                    ctx->obuf_len += p - in;
                    inl -= p - in;
                    num += p - in;
                    in = p;
                } else {
                    memcpy(&(ctx->obuf[ctx->obuf_len]), in, i);
                    ctx->obuf_len += i;
                    inl -= i;
                    in += i;
                    num += i;
                }
            }
            i = BIO_write(b->next_bio, ctx->obuf, ctx->obuf_len);
            if (i <= 0) {
                ctx->obuf_len = orig_olen;
                BIO_copy_next_retry(b);

                if (i < 0)
                    return ((num > 0) ? num : i);
                if (i == 0)
                    return num;
            }
            if (i < ctx->obuf_len)
                memmove(ctx->obuf, ctx->obuf + i, ctx->obuf_len - i);
            ctx->obuf_len -= i;
        }





        if ((foundnl || p - in > ctx->obuf_size) && p - in > 0) {
            i = BIO_write(b->next_bio, in, p - in);
            if (i <= 0) {
                BIO_copy_next_retry(b);
                if (i < 0)
                    return ((num > 0) ? num : i);
                if (i == 0)
                    return num;
            }
            num += i;
            in += i;
            inl -= i;
        }
    }
    while (foundnl && inl > 0);





    if (inl > 0) {
        memcpy(&(ctx->obuf[ctx->obuf_len]), in, inl);
        ctx->obuf_len += inl;
        num += inl;
    }
    return num;
}
