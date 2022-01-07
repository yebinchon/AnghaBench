
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int ARIA_KEY ;


 int CRYPTO_ofb128_encrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int*,int ) ;
 scalar_t__ aria_encrypt ;

__attribute__((used)) static void aria_ofb128_encrypt(const unsigned char *in, unsigned char *out,
                             size_t length, const ARIA_KEY *key,
                             unsigned char *ivec, int *num)
{
    CRYPTO_ofb128_encrypt(in, out, length, key, ivec, num,
                         (block128_f) aria_encrypt);
}
