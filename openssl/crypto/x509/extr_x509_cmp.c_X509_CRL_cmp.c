
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int issuer; } ;
struct TYPE_6__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;


 int X509_NAME_cmp (int ,int ) ;

int X509_CRL_cmp(const X509_CRL *a, const X509_CRL *b)
{
    return X509_NAME_cmp(a->crl.issuer, b->crl.issuer);
}
