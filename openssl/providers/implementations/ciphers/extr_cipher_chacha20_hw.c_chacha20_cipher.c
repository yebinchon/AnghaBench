
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; } ;
struct TYPE_4__ {unsigned int partial_len; int* buf; unsigned int* counter; TYPE_1__ key; } ;
typedef int PROV_CIPHER_CTX ;
typedef TYPE_2__ PROV_CHACHA20_CTX ;


 unsigned int CHACHA_BLK_SIZE ;
 int ChaCha20_ctr32 (unsigned char*,unsigned char const*,unsigned int,int ,unsigned int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int chacha20_cipher(PROV_CIPHER_CTX *bctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    PROV_CHACHA20_CTX *ctx = (PROV_CHACHA20_CTX *)bctx;
    unsigned int n, rem, ctr32;

    n = ctx->partial_len;
    if (n > 0) {
        while (inl > 0 && n < CHACHA_BLK_SIZE) {
            *out++ = *in++ ^ ctx->buf[n++];
            inl--;
        }
        ctx->partial_len = n;

        if (inl == 0)
            return 1;

        if (n == CHACHA_BLK_SIZE) {
            ctx->partial_len = 0;
            ctx->counter[0]++;
            if (ctx->counter[0] == 0)
                ctx->counter[1]++;
        }
    }

    rem = (unsigned int)(inl % CHACHA_BLK_SIZE);
    inl -= rem;
    ctr32 = ctx->counter[0];
    while (inl >= CHACHA_BLK_SIZE) {
        size_t blocks = inl / CHACHA_BLK_SIZE;






        if (sizeof(size_t) > sizeof(unsigned int) && blocks > (1U << 28))
            blocks = (1U << 28);







        ctr32 += (unsigned int)blocks;
        if (ctr32 < blocks) {
            blocks -= ctr32;
            ctr32 = 0;
        }
        blocks *= CHACHA_BLK_SIZE;
        ChaCha20_ctr32(out, in, blocks, ctx->key.d, ctx->counter);
        inl -= blocks;
        in += blocks;
        out += blocks;

        ctx->counter[0] = ctr32;
        if (ctr32 == 0) ctx->counter[1]++;
    }

    if (rem > 0) {
        memset(ctx->buf, 0, sizeof(ctx->buf));
        ChaCha20_ctr32(ctx->buf, ctx->buf, CHACHA_BLK_SIZE,
                       ctx->key.d, ctx->counter);
        for (n = 0; n < rem; n++)
            out[n] = in[n] ^ ctx->buf[n];
        ctx->partial_len = rem;
    }

    return 1;
}
