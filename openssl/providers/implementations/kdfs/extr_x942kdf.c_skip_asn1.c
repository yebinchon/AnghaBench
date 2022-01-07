
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_get_object (unsigned char const**,long*,int*,int*,long) ;
 int V_ASN1_OBJECT ;
 int V_ASN1_UNIVERSAL ;

__attribute__((used)) static int skip_asn1(unsigned char **pp, long *plen, int exptag)
{
    int i, tag, xclass;
    long tmplen;
    const unsigned char *q = *pp;

    i = ASN1_get_object(&q, &tmplen, &tag, &xclass, *plen);
    if ((i & 0x80) != 0 || tag != exptag || xclass != V_ASN1_UNIVERSAL)
        return 0;
    if (tag == V_ASN1_OBJECT)
        q += tmplen;
    *pp = (unsigned char *)q;
    *plen -= q - *pp;
    return 1;
}
