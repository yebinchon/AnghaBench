
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lastUpdate; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;
typedef int ASN1_TIME ;


 int x509_set1_time (int *,int const*) ;

int X509_CRL_set1_lastUpdate(X509_CRL *x, const ASN1_TIME *tm)
{
    if (x == ((void*)0))
        return 0;
    return x509_set1_time(&x->crl.lastUpdate, tm);
}
