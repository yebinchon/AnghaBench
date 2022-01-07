
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int notBefore; } ;
struct TYPE_6__ {TYPE_1__ validity; } ;
struct TYPE_7__ {TYPE_2__ cert_info; } ;
typedef TYPE_3__ X509 ;
typedef int ASN1_TIME ;


 int x509_set1_time (int *,int const*) ;

int X509_set1_notBefore(X509 *x, const ASN1_TIME *tm)
{
    if (x == ((void*)0))
        return 0;
    return x509_set1_time(&x->cert_info.validity.notBefore, tm);
}
