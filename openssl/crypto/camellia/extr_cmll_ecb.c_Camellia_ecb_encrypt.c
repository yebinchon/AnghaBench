
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAMELLIA_KEY ;


 int const CAMELLIA_ENCRYPT ;
 int Camellia_decrypt (unsigned char const*,unsigned char*,int const*) ;
 int Camellia_encrypt (unsigned char const*,unsigned char*,int const*) ;

void Camellia_ecb_encrypt(const unsigned char *in, unsigned char *out,
                          const CAMELLIA_KEY *key, const int enc)
{
    if (CAMELLIA_ENCRYPT == enc)
        Camellia_encrypt(in, out, key);
    else
        Camellia_decrypt(in, out, key);
}
