
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int rijndael_ctx ;


 int memcpy (int *,int *,unsigned int) ;
 int rijndael_decrypt (int *,int *,int *) ;

void
aes_cbc_decrypt(rijndael_ctx *ctx, uint8 *iva, uint8 *data, unsigned len)
{
 uint32 *d = (uint32 *) data;
 unsigned bs = 16;
 uint32 buf[4],
    iv[4];

 memcpy(iv, iva, bs);
 while (len >= bs)
 {
  buf[0] = d[0];
  buf[1] = d[1];
  buf[2] = d[2];
  buf[3] = d[3];

  rijndael_decrypt(ctx, buf, d);

  d[0] ^= iv[0];
  d[1] ^= iv[1];
  d[2] ^= iv[2];
  d[3] ^= iv[3];

  iv[0] = buf[0];
  iv[1] = buf[1];
  iv[2] = buf[2];
  iv[3] = buf[3];
  d += 4;
  len -= bs;
 }
}
