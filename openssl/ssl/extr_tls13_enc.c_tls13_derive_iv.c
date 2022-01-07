
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ivlabel ;
typedef int SSL ;
typedef int EVP_MD ;


 int tls13_hkdf_expand (int *,int const*,unsigned char const*,unsigned char const*,int,int *,int ,unsigned char*,size_t,int) ;

int tls13_derive_iv(SSL *s, const EVP_MD *md, const unsigned char *secret,
                    unsigned char *iv, size_t ivlen)
{



  static const unsigned char ivlabel[] = "iv";


    return tls13_hkdf_expand(s, md, secret, ivlabel, sizeof(ivlabel) - 1,
                             ((void*)0), 0, iv, ivlen, 1);
}
