
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RC2_KEY ;


 int RC2_decrypt (unsigned long*,int *) ;
 int RC2_encrypt (unsigned long*,int *) ;
 int c2l (unsigned char const*,unsigned long) ;
 int l2c (unsigned long,unsigned char*) ;

void RC2_ecb_encrypt(const unsigned char *in, unsigned char *out, RC2_KEY *ks,
                     int encrypt)
{
    unsigned long l, d[2];

    c2l(in, l);
    d[0] = l;
    c2l(in, l);
    d[1] = l;
    if (encrypt)
        RC2_encrypt(d, ks);
    else
        RC2_decrypt(d, ks);
    l = d[0];
    l2c(l, out);
    l = d[1];
    l2c(l, out);
    l = d[0] = d[1] = 0;
}
