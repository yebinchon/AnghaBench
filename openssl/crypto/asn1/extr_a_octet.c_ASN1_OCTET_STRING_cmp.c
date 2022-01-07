
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OCTET_STRING ;


 int ASN1_STRING_cmp (int const*,int const*) ;

int ASN1_OCTET_STRING_cmp(const ASN1_OCTET_STRING *a,
                          const ASN1_OCTET_STRING *b)
{
    return ASN1_STRING_cmp(a, b);
}
