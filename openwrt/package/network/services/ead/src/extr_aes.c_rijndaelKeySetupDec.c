
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int rk ;


 int TD0_ (int ) ;
 int TD1_ (int ) ;
 int TD2_ (int ) ;
 int TD3_ (int ) ;
 int TE4 (int) ;
 int rijndaelKeySetupEnc (int*,int const*) ;

__attribute__((used)) static void rijndaelKeySetupDec(u32 rk[ ], const u8 cipherKey[])
{
 int Nr = 10, i, j;
 u32 temp;


 rijndaelKeySetupEnc(rk, cipherKey);

 for (i = 0, j = 4*Nr; i < j; i += 4, j -= 4) {
  temp = rk[i ]; rk[i ] = rk[j ]; rk[j ] = temp;
  temp = rk[i + 1]; rk[i + 1] = rk[j + 1]; rk[j + 1] = temp;
  temp = rk[i + 2]; rk[i + 2] = rk[j + 2]; rk[j + 2] = temp;
  temp = rk[i + 3]; rk[i + 3] = rk[j + 3]; rk[j + 3] = temp;
 }


 for (i = 1; i < Nr; i++) {
  rk += 4;
  for (j = 0; j < 4; j++) {
   rk[j] = TD0_(TE4((rk[j] >> 24) )) ^
    TD1_(TE4((rk[j] >> 16) & 0xff)) ^
    TD2_(TE4((rk[j] >> 8) & 0xff)) ^
    TD3_(TE4((rk[j] ) & 0xff));
  }
 }
}
