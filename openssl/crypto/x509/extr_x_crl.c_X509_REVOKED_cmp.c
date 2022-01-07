
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int serialNumber; } ;
typedef TYPE_1__ X509_REVOKED ;
typedef int ASN1_STRING ;


 int ASN1_STRING_cmp (int *,int *) ;

__attribute__((used)) static int X509_REVOKED_cmp(const X509_REVOKED *const *a,
                            const X509_REVOKED *const *b)
{
    return (ASN1_STRING_cmp((ASN1_STRING *)&(*a)->serialNumber,
                            (ASN1_STRING *)&(*b)->serialNumber));
}
