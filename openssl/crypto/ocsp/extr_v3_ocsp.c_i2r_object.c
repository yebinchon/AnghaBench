
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int BIO ;


 scalar_t__ BIO_printf (int *,char*,int,char*) ;
 scalar_t__ i2a_ASN1_OBJECT (int *,void*) ;

__attribute__((used)) static int i2r_object(const X509V3_EXT_METHOD *method, void *oid, BIO *bp,
                      int ind)
{
    if (BIO_printf(bp, "%*s", ind, "") <= 0)
        return 0;
    if (i2a_ASN1_OBJECT(bp, oid) <= 0)
        return 0;
    return 1;
}
