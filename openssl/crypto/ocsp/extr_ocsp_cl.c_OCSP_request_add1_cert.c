
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {TYPE_1__* optionalSignature; } ;
struct TYPE_5__ {int * certs; } ;
typedef TYPE_1__ OCSP_SIGNATURE ;
typedef TYPE_2__ OCSP_REQUEST ;


 TYPE_1__* OCSP_SIGNATURE_new () ;
 int X509_up_ref (int *) ;
 int * sk_X509_new_null () ;
 int sk_X509_push (int *,int *) ;

int OCSP_request_add1_cert(OCSP_REQUEST *req, X509 *cert)
{
    OCSP_SIGNATURE *sig;
    if (req->optionalSignature == ((void*)0))
        req->optionalSignature = OCSP_SIGNATURE_new();
    sig = req->optionalSignature;
    if (sig == ((void*)0))
        return 0;
    if (cert == ((void*)0))
        return 1;
    if (sig->certs == ((void*)0)
        && (sig->certs = sk_X509_new_null()) == ((void*)0))
        return 0;

    if (!sk_X509_push(sig->certs, cert))
        return 0;
    X509_up_ref(cert);
    return 1;
}
