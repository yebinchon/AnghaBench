
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sig_alg; int * signature; } ;
typedef TYPE_1__ X509_REQ ;
typedef int X509_ALGOR ;
typedef int ASN1_BIT_STRING ;



void X509_REQ_get0_signature(const X509_REQ *req, const ASN1_BIT_STRING **psig,
                             const X509_ALGOR **palg)
{
    if (psig != ((void*)0))
        *psig = req->signature;
    if (palg != ((void*)0))
        *palg = &req->sig_alg;
}
