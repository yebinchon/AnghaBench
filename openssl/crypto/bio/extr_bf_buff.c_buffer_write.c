
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * next_bio; scalar_t__ ptr; } ;
struct TYPE_6__ {int obuf_size; int obuf_len; int obuf_off; char const* obuf; } ;
typedef TYPE_1__ BIO_F_BUFFER_CTX ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_copy_next_retry (TYPE_2__*) ;
 int BIO_write (int *,char const*,int) ;
 int memcpy (char const*,char const*,int) ;

__attribute__((used)) static int buffer_write(BIO *b, const char *in, int inl)
{
    int i, num = 0;
    BIO_F_BUFFER_CTX *ctx;

    if ((in == ((void*)0)) || (inl <= 0))
        return 0;
    ctx = (BIO_F_BUFFER_CTX *)b->ptr;
    if ((ctx == ((void*)0)) || (b->next_bio == ((void*)0)))
        return 0;

    BIO_clear_retry_flags(b);
 start:
    i = ctx->obuf_size - (ctx->obuf_len + ctx->obuf_off);

    if (i >= inl) {
        memcpy(&(ctx->obuf[ctx->obuf_off + ctx->obuf_len]), in, inl);
        ctx->obuf_len += inl;
        return (num + inl);
    }


    if (ctx->obuf_len != 0) {
        if (i > 0) {
            memcpy(&(ctx->obuf[ctx->obuf_off + ctx->obuf_len]), in, i);
            in += i;
            inl -= i;
            num += i;
            ctx->obuf_len += i;
        }

        for (;;) {
            i = BIO_write(b->next_bio, &(ctx->obuf[ctx->obuf_off]),
                          ctx->obuf_len);
            if (i <= 0) {
                BIO_copy_next_retry(b);

                if (i < 0)
                    return ((num > 0) ? num : i);
                if (i == 0)
                    return num;
            }
            ctx->obuf_off += i;
            ctx->obuf_len -= i;
            if (ctx->obuf_len == 0)
                break;
        }
    }




    ctx->obuf_off = 0;


    while (inl >= ctx->obuf_size) {
        i = BIO_write(b->next_bio, in, inl);
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
        if (inl == 0)
            return num;
    }




    goto start;
}
