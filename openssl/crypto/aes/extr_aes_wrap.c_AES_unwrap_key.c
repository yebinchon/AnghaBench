
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int AES_KEY ;


 scalar_t__ AES_decrypt ;
 int CRYPTO_128_unwrap (int *,unsigned char const*,unsigned char*,unsigned char const*,unsigned int,int ) ;

int AES_unwrap_key(AES_KEY *key, const unsigned char *iv,
                   unsigned char *out,
                   const unsigned char *in, unsigned int inlen)
{
    return CRYPTO_128_unwrap(key, iv, out, in, inlen,
                             (block128_f) AES_decrypt);
}
