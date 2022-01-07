
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int ecdh_KDF_X9_63 (unsigned char*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int const*) ;

int ECDH_KDF_X9_62(unsigned char *out, size_t outlen,
                   const unsigned char *Z, size_t Zlen,
                   const unsigned char *sinfo, size_t sinfolen,
                   const EVP_MD *md)
{
    return ecdh_KDF_X9_63(out, outlen, Z, Zlen, sinfo, sinfolen, md);
}
