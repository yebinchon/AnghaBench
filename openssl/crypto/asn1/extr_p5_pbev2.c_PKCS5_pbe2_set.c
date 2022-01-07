
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_CIPHER ;


 int * PKCS5_pbe2_set_iv (int const*,int,unsigned char*,int,int *,int) ;

X509_ALGOR *PKCS5_pbe2_set(const EVP_CIPHER *cipher, int iter,
                           unsigned char *salt, int saltlen)
{
    return PKCS5_pbe2_set_iv(cipher, iter, salt, saltlen, ((void*)0), -1);
}
