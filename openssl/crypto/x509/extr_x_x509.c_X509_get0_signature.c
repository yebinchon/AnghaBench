
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_3__ {int sig_alg; int signature; } ;
typedef TYPE_1__ X509 ;
typedef int ASN1_BIT_STRING ;



void X509_get0_signature(const ASN1_BIT_STRING **psig,
                         const X509_ALGOR **palg, const X509 *x)
{
    if (psig)
        *psig = &x->signature;
    if (palg)
        *palg = &x->sig_alg;
}
