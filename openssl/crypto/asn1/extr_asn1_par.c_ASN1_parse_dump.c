
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int asn1_parse2 (int *,unsigned char const**,long,int ,int ,int,int) ;

int ASN1_parse_dump(BIO *bp, const unsigned char *pp, long len, int indent,
                    int dump)
{
    return asn1_parse2(bp, &pp, len, 0, 0, indent, dump);
}
