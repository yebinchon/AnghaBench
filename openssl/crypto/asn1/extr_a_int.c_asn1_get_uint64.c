
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ASN1_F_ASN1_GET_UINT64 ;
 int ASN1_R_TOO_LARGE ;
 int ASN1err (int ,int ) ;

__attribute__((used)) static int asn1_get_uint64(uint64_t *pr, const unsigned char *b, size_t blen)
{
    size_t i;
    uint64_t r;

    if (blen > sizeof(*pr)) {
        ASN1err(ASN1_F_ASN1_GET_UINT64, ASN1_R_TOO_LARGE);
        return 0;
    }
    if (b == ((void*)0))
        return 0;
    for (r = 0, i = 0; i < blen; i++) {
        r <<= 8;
        r |= b[i];
    }
    *pr = r;
    return 1;
}
