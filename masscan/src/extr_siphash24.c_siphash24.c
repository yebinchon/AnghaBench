
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int crypto_auth (unsigned char*,unsigned char const*,size_t,unsigned char const*) ;

uint64_t
siphash24(const void *in, size_t inlen, const uint64_t key[2])
{
    uint64_t result;

    crypto_auth((unsigned char*)&result,
                (const unsigned char *)in,
                inlen,
                (const unsigned char *)&key[0]);

    return result;
}
