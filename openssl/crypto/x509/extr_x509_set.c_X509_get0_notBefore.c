
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int const* notBefore; } ;
struct TYPE_6__ {TYPE_1__ validity; } ;
struct TYPE_7__ {TYPE_2__ cert_info; } ;
typedef TYPE_3__ X509 ;
typedef int ASN1_TIME ;



const ASN1_TIME *X509_get0_notBefore(const X509 *x)
{
    return x->cert_info.validity.notBefore;
}
