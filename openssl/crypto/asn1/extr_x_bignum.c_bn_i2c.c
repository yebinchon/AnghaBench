
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int BN_bn2bin (int *,unsigned char*) ;
 int BN_num_bits (int *) ;
 int BN_num_bytes (int *) ;

__attribute__((used)) static int bn_i2c(const ASN1_VALUE **pval, unsigned char *cont, int *putype,
                  const ASN1_ITEM *it)
{
    BIGNUM *bn;
    int pad;
    if (*pval == ((void*)0))
        return -1;
    bn = (BIGNUM *)*pval;

    if (BN_num_bits(bn) & 0x7)
        pad = 0;
    else
        pad = 1;
    if (cont) {
        if (pad)
            *cont++ = 0;
        BN_bn2bin(bn, cont);
    }
    return pad + BN_num_bytes(bn);
}
