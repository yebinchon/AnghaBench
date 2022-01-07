
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int rijndael_ctx ;


 int rijndael_decrypt (int *,int *,int *) ;

void
aes_ecb_decrypt(rijndael_ctx *ctx, uint8 *data, unsigned len)
{
 unsigned bs = 16;
 uint32 *d;

 while (len >= bs)
 {
  d = (uint32 *) data;
  rijndael_decrypt(ctx, d, d);

  len -= bs;
  data += bs;
 }
}
