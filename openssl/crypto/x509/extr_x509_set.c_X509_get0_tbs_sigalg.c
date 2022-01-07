
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_4__ {int const signature; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;



const X509_ALGOR *X509_get0_tbs_sigalg(const X509 *x)
{
    return &x->cert_info.signature;
}
