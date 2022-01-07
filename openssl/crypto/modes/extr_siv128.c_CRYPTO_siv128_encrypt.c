
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int byte; } ;
struct TYPE_11__ {scalar_t__ crypto_ok; scalar_t__ final_ret; int cipher_ctx; TYPE_1__ tag; } ;
struct TYPE_10__ {int* byte; } ;
typedef TYPE_2__ SIV_BLOCK ;
typedef TYPE_3__ SIV128_CONTEXT ;


 int SIV_LEN ;
 int memcpy (int ,TYPE_2__*,int ) ;
 int siv128_do_encrypt (int ,unsigned char*,unsigned char const*,size_t,TYPE_2__*) ;
 int siv128_do_s2v_p (TYPE_3__*,TYPE_2__*,unsigned char const*,size_t) ;

int CRYPTO_siv128_encrypt(SIV128_CONTEXT *ctx,
                          const unsigned char *in, unsigned char *out,
                          size_t len)
{
    SIV_BLOCK q;


    if (ctx->crypto_ok == 0)
        return 0;
    ctx->crypto_ok--;

    if (!siv128_do_s2v_p(ctx, &q, in, len))
        return 0;

    memcpy(ctx->tag.byte, &q, SIV_LEN);
    q.byte[8] &= 0x7f;
    q.byte[12] &= 0x7f;

    if (!siv128_do_encrypt(ctx->cipher_ctx, out, in, len, &q))
        return 0;
    ctx->final_ret = 0;
    return len;
}
