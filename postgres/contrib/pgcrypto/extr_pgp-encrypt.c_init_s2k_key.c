
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s2k_cipher_algo; scalar_t__ cipher_algo; int sym_key_len; int sym_key; int s2k; int s2k_count; int s2k_digest_algo; int s2k_mode; } ;
typedef TYPE_1__ PGP_Context ;


 int pgp_s2k_fill (int *,int ,int ,int ) ;
 int pgp_s2k_process (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static int
init_s2k_key(PGP_Context *ctx)
{
 int res;

 if (ctx->s2k_cipher_algo < 0)
  ctx->s2k_cipher_algo = ctx->cipher_algo;

 res = pgp_s2k_fill(&ctx->s2k, ctx->s2k_mode, ctx->s2k_digest_algo, ctx->s2k_count);
 if (res < 0)
  return res;

 return pgp_s2k_process(&ctx->s2k, ctx->s2k_cipher_algo,
         ctx->sym_key, ctx->sym_key_len);
}
