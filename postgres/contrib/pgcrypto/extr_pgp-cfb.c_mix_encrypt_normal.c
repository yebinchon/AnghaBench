
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int pos; int* encbuf; int* fre; } ;
typedef TYPE_1__ PGP_CFB ;



__attribute__((used)) static int
mix_encrypt_normal(PGP_CFB *ctx, const uint8 *data, int len, uint8 *dst)
{
 int i;

 for (i = ctx->pos; i < ctx->pos + len; i++)
  *dst++ = ctx->encbuf[i] = ctx->fre[i] ^ (*data++);
 ctx->pos += len;
 return len;
}
