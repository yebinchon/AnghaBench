
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int rijndael_ctx ;


 int rijndael_encrypt (int *,int *,int *) ;

void
aes_cbc_encrypt(rijndael_ctx *ctx, uint8 *iva, uint8 *data, unsigned len)
{
 uint32 *iv = (uint32 *) iva;
 uint32 *d = (uint32 *) data;
 unsigned bs = 16;

 while (len >= bs)
 {
  d[0] ^= iv[0];
  d[1] ^= iv[1];
  d[2] ^= iv[2];
  d[3] ^= iv[3];

  rijndael_encrypt(ctx, d, d);

  iv = d;
  d += bs / 4;
  len -= bs;
 }
}
