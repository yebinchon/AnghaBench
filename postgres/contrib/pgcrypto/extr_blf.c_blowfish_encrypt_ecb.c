
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int BlowfishContext ;


 int Assert (int) ;
 int GET_32BIT_MSB_FIRST (int *) ;
 int PUT_32BIT_MSB_FIRST (int *,int ) ;
 int blowfish_encrypt (int ,int ,int *,int *) ;

void
blowfish_encrypt_ecb(uint8 *blk, int len, BlowfishContext *ctx)
{
 uint32 xL,
    xR,
    out[2];

 Assert((len & 7) == 0);

 while (len > 0)
 {
  xL = GET_32BIT_MSB_FIRST(blk);
  xR = GET_32BIT_MSB_FIRST(blk + 4);
  blowfish_encrypt(xL, xR, out, ctx);
  PUT_32BIT_MSB_FIRST(blk, out[0]);
  PUT_32BIT_MSB_FIRST(blk + 4, out[1]);
  blk += 8;
  len -= 8;
 }
}
