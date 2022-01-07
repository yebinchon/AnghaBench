
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_BIT_STRING ;


 int ASN1_STRING_set (int *,unsigned char*,int) ;

int ASN1_BIT_STRING_set(ASN1_BIT_STRING *x, unsigned char *d, int len)
{
    return ASN1_STRING_set(x, d, len);
}
