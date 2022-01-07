
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int block_no; int pos; int* encbuf; int* fre; int fr; int block_size; } ;
typedef TYPE_1__ PGP_CFB ;


 int memcpy (int,int*,int) ;

__attribute__((used)) static int
mix_encrypt_resync(PGP_CFB *ctx, const uint8 *data, int len, uint8 *dst)
{
 int i,
    n;


 if (ctx->block_no == 2)
 {
  n = 2 - ctx->pos;
  if (len < n)
   n = len;
  for (i = ctx->pos; i < ctx->pos + n; i++)
   *dst++ = ctx->encbuf[i] = ctx->fre[i] ^ (*data++);

  ctx->pos += n;
  len -= n;

  if (ctx->pos == 2)
  {
   memcpy(ctx->fr, ctx->encbuf + 2, ctx->block_size - 2);
   memcpy(ctx->fr + ctx->block_size - 2, ctx->encbuf, 2);
   ctx->pos = 0;
   return n;
  }
 }
 for (i = ctx->pos; i < ctx->pos + len; i++)
  *dst++ = ctx->encbuf[i] = ctx->fre[i] ^ (*data++);
 ctx->pos += len;
 return len;
}
