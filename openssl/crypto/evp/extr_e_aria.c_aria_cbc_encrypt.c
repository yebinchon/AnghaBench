
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int ARIA_KEY ;


 int CRYPTO_cbc128_decrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int ) ;
 int CRYPTO_cbc128_encrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int ) ;
 scalar_t__ aria_encrypt ;

__attribute__((used)) static void aria_cbc_encrypt(const unsigned char *in, unsigned char *out,
                             size_t len, const ARIA_KEY *key,
                             unsigned char *ivec, const int enc)
{

    if (enc)
        CRYPTO_cbc128_encrypt(in, out, len, key, ivec,
                              (block128_f) aria_encrypt);
    else
        CRYPTO_cbc128_decrypt(in, out, len, key, ivec,
                              (block128_f) aria_encrypt);
}
