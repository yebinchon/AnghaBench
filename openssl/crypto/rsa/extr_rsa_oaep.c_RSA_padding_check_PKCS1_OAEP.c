
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSA_padding_check_PKCS1_OAEP_mgf1 (unsigned char*,int,unsigned char const*,int,int,unsigned char const*,int,int *,int *) ;

int RSA_padding_check_PKCS1_OAEP(unsigned char *to, int tlen,
                                 const unsigned char *from, int flen, int num,
                                 const unsigned char *param, int plen)
{
    return RSA_padding_check_PKCS1_OAEP_mgf1(to, tlen, from, flen, num,
                                             param, plen, ((void*)0), ((void*)0));
}
