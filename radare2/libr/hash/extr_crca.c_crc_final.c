
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int utcrc ;
struct TYPE_3__ {int crc; int size; int xout; scalar_t__ reflect; } ;
typedef TYPE_1__ R_CRC_CTX ;


 int UTCRC_C (int) ;

__attribute__((used)) static void crc_final (R_CRC_CTX *ctx, utcrc *r) {
 utcrc crc;
 int i;

 crc = ctx->crc;
 crc &= (((UTCRC_C(1) << (ctx->size - 1)) - 1) << 1) | 1;
 if (ctx->reflect) {
  for (i = 0; i < (ctx->size >> 1); i++) {
   if (((crc >> i) ^ (crc >> (ctx->size - 1 - i))) & 1) {
    crc ^= (UTCRC_C(1) << i) ^ (UTCRC_C(1) << (ctx->size - 1 - i));
   }
  }
 }

 *r = crc ^ ctx->xout;
}
