
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u4byte ;
struct TYPE_4__ {int* e_key; int* d_key; int decrypt; int k_len; } ;
typedef TYPE_1__ rijndael_ctx ;


 int gen_tabs () ;
 int imix_col (int,int) ;
 int io_swap (int const) ;
 int loop4 (int) ;
 int loop6 (int) ;
 int loop8 (int) ;
 int tab_gen ;

rijndael_ctx *
rijndael_set_key(rijndael_ctx *ctx, const u4byte *in_key, const u4byte key_len,
     int encrypt)
{
 u4byte i,
    t,
    u,
    v,
    w;
 u4byte *e_key = ctx->e_key;
 u4byte *d_key = ctx->d_key;

 ctx->decrypt = !encrypt;

 if (!tab_gen)
  gen_tabs();

 ctx->k_len = (key_len + 31) / 32;

 e_key[0] = io_swap(in_key[0]);
 e_key[1] = io_swap(in_key[1]);
 e_key[2] = io_swap(in_key[2]);
 e_key[3] = io_swap(in_key[3]);

 switch (ctx->k_len)
 {
  case 4:
   t = e_key[3];
   for (i = 0; i < 10; ++i)
    loop4(i);
   break;

  case 6:
   e_key[4] = io_swap(in_key[4]);
   t = e_key[5] = io_swap(in_key[5]);
   for (i = 0; i < 8; ++i)
    loop6(i);
   break;

  case 8:
   e_key[4] = io_swap(in_key[4]);
   e_key[5] = io_swap(in_key[5]);
   e_key[6] = io_swap(in_key[6]);
   t = e_key[7] = io_swap(in_key[7]);
   for (i = 0; i < 7; ++i)
    loop8(i);
   break;
 }

 if (!encrypt)
 {
  d_key[0] = e_key[0];
  d_key[1] = e_key[1];
  d_key[2] = e_key[2];
  d_key[3] = e_key[3];

  for (i = 4; i < 4 * ctx->k_len + 24; ++i)
   imix_col(d_key[i], e_key[i]);
 }

 return ctx;
}
