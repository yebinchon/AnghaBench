
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int rijndael_ctx ;


 int rijndael_set_key (int *,int *,unsigned int,int) ;

void
aes_set_key(rijndael_ctx *ctx, const uint8 *key, unsigned keybits, int enc)
{
 uint32 *k;

 k = (uint32 *) key;
 rijndael_set_key(ctx, k, keybits, enc);
}
