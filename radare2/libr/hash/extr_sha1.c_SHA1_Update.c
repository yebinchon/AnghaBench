
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
struct TYPE_4__ {int* W; int lenW; int sizeLo; int sizeHi; } ;
typedef TYPE_1__ R_SHA_CTX ;


 int shaHashBlock (TYPE_1__*) ;

void SHA1_Update(R_SHA_CTX *ctx, const void *_dataIn, int len) {
 const ut8 *dataIn = _dataIn;
 int i;


 for (i = 0; i < len; i++) {
  ctx->W[ctx->lenW / 4] <<= 8;
  ctx->W[ctx->lenW / 4] |= (unsigned int) dataIn[i];
  if ((++ctx->lenW) % 64 == 0) {
   shaHashBlock (ctx);
   ctx->lenW = 0;
  }
  ctx->sizeLo += 8;
  ctx->sizeHi += (ctx->sizeLo < 8);
 }
}
