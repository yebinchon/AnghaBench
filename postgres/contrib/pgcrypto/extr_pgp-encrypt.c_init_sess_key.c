
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_len; int key; } ;
struct TYPE_5__ {TYPE_1__ s2k; int sess_key; int sess_key_len; int cipher_algo; scalar_t__ pub_key; scalar_t__ use_sess_key; } ;
typedef TYPE_2__ PGP_Context ;


 int PXE_NO_RANDOM ;
 int memcpy (int ,int ,int ) ;
 int pg_strong_random (int ,int ) ;
 int pgp_get_cipher_key_size (int ) ;

__attribute__((used)) static int
init_sess_key(PGP_Context *ctx)
{
 if (ctx->use_sess_key || ctx->pub_key)
 {
  ctx->sess_key_len = pgp_get_cipher_key_size(ctx->cipher_algo);
  if (!pg_strong_random(ctx->sess_key, ctx->sess_key_len))
   return PXE_NO_RANDOM;
 }
 else
 {
  ctx->sess_key_len = ctx->s2k.key_len;
  memcpy(ctx->sess_key, ctx->s2k.key, ctx->s2k.key_len);
 }

 return 0;
}
