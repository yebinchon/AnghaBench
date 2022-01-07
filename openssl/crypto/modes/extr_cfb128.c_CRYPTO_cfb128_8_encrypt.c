
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;


 int cfbr_encrypt_block (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int,int ) ;

void CRYPTO_cfb128_8_encrypt(const unsigned char *in, unsigned char *out,
                             size_t length, const void *key,
                             unsigned char ivec[16], int *num,
                             int enc, block128_f block)
{
    size_t n;

    for (n = 0; n < length; ++n)
        cfbr_encrypt_block(&in[n], &out[n], 8, key, ivec, enc, block);
}
