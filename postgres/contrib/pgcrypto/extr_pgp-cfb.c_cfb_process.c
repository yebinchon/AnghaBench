
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int (* mix_data_t ) (TYPE_1__*,int const*,int,int *) ;
struct TYPE_5__ {scalar_t__ pos; int block_size; int block_no; int encbuf; int fr; int fre; int ciph; } ;
typedef TYPE_1__ PGP_CFB ;


 int memcpy (int ,int ,int) ;
 int px_cipher_encrypt (int ,int ,int,int ) ;

__attribute__((used)) static int
cfb_process(PGP_CFB *ctx, const uint8 *data, int len, uint8 *dst,
   mix_data_t mix_data)
{
 int n;
 int res;

 while (len > 0 && ctx->pos > 0)
 {
  n = ctx->block_size - ctx->pos;
  if (len < n)
   n = len;

  n = mix_data(ctx, data, n, dst);
  data += n;
  dst += n;
  len -= n;

  if (ctx->pos == ctx->block_size)
  {
   memcpy(ctx->fr, ctx->encbuf, ctx->block_size);
   ctx->pos = 0;
  }
 }

 while (len > 0)
 {
  px_cipher_encrypt(ctx->ciph, ctx->fr, ctx->block_size, ctx->fre);
  if (ctx->block_no < 5)
   ctx->block_no++;

  n = ctx->block_size;
  if (len < n)
   n = len;

  res = mix_data(ctx, data, n, dst);
  data += res;
  dst += res;
  len -= res;

  if (ctx->pos == ctx->block_size)
  {
   memcpy(ctx->fr, ctx->encbuf, ctx->block_size);
   ctx->pos = 0;
  }
 }
 return 0;
}
