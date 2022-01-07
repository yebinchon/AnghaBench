
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;


 int ECDSA_sign_ex (int,unsigned char const*,int,unsigned char*,unsigned int*,int *,int *,int *) ;

int ECDSA_sign(int type, const unsigned char *dgst, int dlen, unsigned char
               *sig, unsigned int *siglen, EC_KEY *eckey)
{
    return ECDSA_sign_ex(type, dgst, dlen, sig, siglen, ((void*)0), ((void*)0), eckey);
}
