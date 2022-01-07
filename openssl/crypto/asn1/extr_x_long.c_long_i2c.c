
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long size; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int COPY_SIZE (int const*,long) ;
 int memcpy (long*,int const**,int ) ;
 int num_bits_ulong (unsigned long) ;

__attribute__((used)) static int long_i2c(const ASN1_VALUE **pval, unsigned char *cont, int *putype,
                    const ASN1_ITEM *it)
{
    long ltmp;
    unsigned long utmp, sign;
    int clen, pad, i;

    memcpy(&ltmp, pval, COPY_SIZE(*pval, ltmp));
    if (ltmp == it->size)
        return -1;





    if (ltmp < 0) {
        sign = 0xff;
        utmp = 0 - (unsigned long)ltmp - 1;
    } else {
        sign = 0;
        utmp = ltmp;
    }
    clen = num_bits_ulong(utmp);

    if (!(clen & 0x7))
        pad = 1;
    else
        pad = 0;


    clen = (clen + 7) >> 3;

    if (cont != ((void*)0)) {
        if (pad)
            *cont++ = (unsigned char)sign;
        for (i = clen - 1; i >= 0; i--) {
            cont[i] = (unsigned char)(utmp ^ sign);
            utmp >>= 8;
        }
    }
    return clen + pad;
}
