
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_MD ;


 int RSA_verify_PKCS1_PSS_mgf1 (int *,unsigned char const*,int const*,int *,unsigned char const*,int) ;

int RSA_verify_PKCS1_PSS(RSA *rsa, const unsigned char *mHash,
                         const EVP_MD *Hash, const unsigned char *EM,
                         int sLen)
{
    return RSA_verify_PKCS1_PSS_mgf1(rsa, mHash, Hash, ((void*)0), EM, sLen);
}
