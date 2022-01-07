
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int resync; int block_size; int fr; int * ciph; } ;
typedef int PX_Cipher ;
typedef TYPE_1__ PGP_CFB ;


 int memcpy (int ,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int pgp_load_cipher (int,int **) ;
 TYPE_1__* px_alloc (int) ;
 int px_cipher_block_size (int *) ;
 int px_cipher_free (int *) ;
 int px_cipher_init (int *,int const*,int,int *) ;

int
pgp_cfb_create(PGP_CFB **ctx_p, int algo, const uint8 *key, int key_len,
      int resync, uint8 *iv)
{
 int res;
 PX_Cipher *ciph;
 PGP_CFB *ctx;

 res = pgp_load_cipher(algo, &ciph);
 if (res < 0)
  return res;

 res = px_cipher_init(ciph, key, key_len, ((void*)0));
 if (res < 0)
 {
  px_cipher_free(ciph);
  return res;
 }

 ctx = px_alloc(sizeof(*ctx));
 memset(ctx, 0, sizeof(*ctx));
 ctx->ciph = ciph;
 ctx->block_size = px_cipher_block_size(ciph);
 ctx->resync = resync;

 if (iv)
  memcpy(ctx->fr, iv, ctx->block_size);

 *ctx_p = ctx;
 return 0;
}
