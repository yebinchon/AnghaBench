
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ encode; int buf_len; int buf_off; int tmp_len; int * buf; int base64; int * tmp; } ;
typedef TYPE_1__ BIO_B64_CTX ;
typedef int BIO ;


 int B64_BLOCK_SIZE ;
 scalar_t__ B64_ENCODE ;
 int BIO_FLAGS_BASE64_NO_NL ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 scalar_t__ BIO_get_data (int *) ;
 int BIO_get_flags (int *) ;
 int * BIO_next (int *) ;
 int BIO_write (int *,int *,int) ;
 void* EVP_EncodeBlock (unsigned char*,unsigned char const*,int) ;
 int EVP_EncodeInit (int ) ;
 int EVP_EncodeUpdate (int ,unsigned char*,int*,unsigned char*,int) ;
 int OPENSSL_assert (int) ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static int b64_write(BIO *b, const char *in, int inl)
{
    int ret = 0;
    int n;
    int i;
    BIO_B64_CTX *ctx;
    BIO *next;

    ctx = (BIO_B64_CTX *)BIO_get_data(b);
    next = BIO_next(b);
    if ((ctx == ((void*)0)) || (next == ((void*)0)))
        return 0;

    BIO_clear_retry_flags(b);

    if (ctx->encode != B64_ENCODE) {
        ctx->encode = B64_ENCODE;
        ctx->buf_len = 0;
        ctx->buf_off = 0;
        ctx->tmp_len = 0;
        EVP_EncodeInit(ctx->base64);
    }

    OPENSSL_assert(ctx->buf_off < (int)sizeof(ctx->buf));
    OPENSSL_assert(ctx->buf_len <= (int)sizeof(ctx->buf));
    OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
    n = ctx->buf_len - ctx->buf_off;
    while (n > 0) {
        i = BIO_write(next, &(ctx->buf[ctx->buf_off]), n);
        if (i <= 0) {
            BIO_copy_next_retry(b);
            return i;
        }
        OPENSSL_assert(i <= n);
        ctx->buf_off += i;
        OPENSSL_assert(ctx->buf_off <= (int)sizeof(ctx->buf));
        OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
        n -= i;
    }

    ctx->buf_off = 0;
    ctx->buf_len = 0;

    if ((in == ((void*)0)) || (inl <= 0))
        return 0;

    while (inl > 0) {
        n = (inl > B64_BLOCK_SIZE) ? B64_BLOCK_SIZE : inl;

        if (BIO_get_flags(b) & BIO_FLAGS_BASE64_NO_NL) {
            if (ctx->tmp_len > 0) {
                OPENSSL_assert(ctx->tmp_len <= 3);
                n = 3 - ctx->tmp_len;



                if (n > inl)
                    n = inl;
                memcpy(&(ctx->tmp[ctx->tmp_len]), in, n);
                ctx->tmp_len += n;
                ret += n;
                if (ctx->tmp_len < 3)
                    break;
                ctx->buf_len =
                    EVP_EncodeBlock((unsigned char *)ctx->buf,
                                    (unsigned char *)ctx->tmp, ctx->tmp_len);
                OPENSSL_assert(ctx->buf_len <= (int)sizeof(ctx->buf));
                OPENSSL_assert(ctx->buf_len >= ctx->buf_off);




                ctx->tmp_len = 0;
            } else {
                if (n < 3) {
                    memcpy(ctx->tmp, in, n);
                    ctx->tmp_len = n;
                    ret += n;
                    break;
                }
                n -= n % 3;
                ctx->buf_len =
                    EVP_EncodeBlock((unsigned char *)ctx->buf,
                                    (const unsigned char *)in, n);
                OPENSSL_assert(ctx->buf_len <= (int)sizeof(ctx->buf));
                OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
                ret += n;
            }
        } else {
            if (!EVP_EncodeUpdate(ctx->base64,
                                 (unsigned char *)ctx->buf, &ctx->buf_len,
                                 (unsigned char *)in, n))
                return ((ret == 0) ? -1 : ret);
            OPENSSL_assert(ctx->buf_len <= (int)sizeof(ctx->buf));
            OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
            ret += n;
        }
        inl -= n;
        in += n;

        ctx->buf_off = 0;
        n = ctx->buf_len;
        while (n > 0) {
            i = BIO_write(next, &(ctx->buf[ctx->buf_off]), n);
            if (i <= 0) {
                BIO_copy_next_retry(b);
                return ((ret == 0) ? i : ret);
            }
            OPENSSL_assert(i <= n);
            n -= i;
            ctx->buf_off += i;
            OPENSSL_assert(ctx->buf_off <= (int)sizeof(ctx->buf));
            OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
        }
        ctx->buf_len = 0;
        ctx->buf_off = 0;
    }
    return ret;
}
