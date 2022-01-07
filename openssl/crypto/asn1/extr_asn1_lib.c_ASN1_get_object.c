
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_F_ASN1_GET_OBJECT ;
 int ASN1_R_HEADER_TOO_LONG ;
 int ASN1_R_TOO_LONG ;
 int ASN1err (int ,int ) ;
 long INT_MAX ;
 unsigned char const V_ASN1_CONSTRUCTED ;
 unsigned char const V_ASN1_PRIMITIVE_TAG ;
 unsigned char const V_ASN1_PRIVATE ;
 int asn1_get_length (unsigned char const**,int*,long*,long) ;

int ASN1_get_object(const unsigned char **pp, long *plength, int *ptag,
                    int *pclass, long omax)
{
    int i, ret;
    long l;
    const unsigned char *p = *pp;
    int tag, xclass, inf;
    long max = omax;

    if (!max)
        goto err;
    ret = (*p & V_ASN1_CONSTRUCTED);
    xclass = (*p & V_ASN1_PRIVATE);
    i = *p & V_ASN1_PRIMITIVE_TAG;
    if (i == V_ASN1_PRIMITIVE_TAG) {
        p++;
        if (--max == 0)
            goto err;
        l = 0;
        while (*p & 0x80) {
            l <<= 7L;
            l |= *(p++) & 0x7f;
            if (--max == 0)
                goto err;
            if (l > (INT_MAX >> 7L))
                goto err;
        }
        l <<= 7L;
        l |= *(p++) & 0x7f;
        tag = (int)l;
        if (--max == 0)
            goto err;
    } else {
        tag = i;
        p++;
        if (--max == 0)
            goto err;
    }
    *ptag = tag;
    *pclass = xclass;
    if (!asn1_get_length(&p, &inf, plength, max))
        goto err;

    if (inf && !(ret & V_ASN1_CONSTRUCTED))
        goto err;

    if (*plength > (omax - (p - *pp))) {
        ASN1err(ASN1_F_ASN1_GET_OBJECT, ASN1_R_TOO_LONG);




        ret |= 0x80;
    }
    *pp = p;
    return ret | inf;
 err:
    ASN1err(ASN1_F_ASN1_GET_OBJECT, ASN1_R_HEADER_TOO_LONG);
    return 0x80;
}
