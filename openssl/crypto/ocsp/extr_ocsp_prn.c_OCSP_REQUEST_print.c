
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int singleRequestExtensions; int * reqCert; } ;
struct TYPE_9__ {int requestExtensions; int requestList; int * requestorName; int version; } ;
struct TYPE_8__ {TYPE_1__* optionalSignature; TYPE_3__ tbsRequest; } ;
struct TYPE_7__ {int certs; int signature; int signatureAlgorithm; } ;
typedef TYPE_1__ OCSP_SIGNATURE ;
typedef TYPE_2__ OCSP_REQUEST ;
typedef TYPE_3__ OCSP_REQINFO ;
typedef TYPE_4__ OCSP_ONEREQ ;
typedef int OCSP_CERTID ;
typedef int BIO ;


 long ASN1_INTEGER_get (int ) ;
 scalar_t__ BIO_printf (int *,char*,long,long) ;
 scalar_t__ BIO_write (int *,char*,int) ;
 int GENERAL_NAME_print (int *,int *) ;
 int PEM_write_bio_X509 (int *,int ) ;
 int X509V3_extensions_print (int *,char*,int ,unsigned long,int) ;
 int X509_print (int *,int ) ;
 int X509_signature_print (int *,int *,int ) ;
 int ocsp_certid_print (int *,int *,int) ;
 int sk_OCSP_ONEREQ_num (int ) ;
 TYPE_4__* sk_OCSP_ONEREQ_value (int ,int) ;
 int sk_X509_num (int ) ;
 int sk_X509_value (int ,int) ;

int OCSP_REQUEST_print(BIO *bp, OCSP_REQUEST *o, unsigned long flags)
{
    int i;
    long l;
    OCSP_CERTID *cid = ((void*)0);
    OCSP_ONEREQ *one = ((void*)0);
    OCSP_REQINFO *inf = &o->tbsRequest;
    OCSP_SIGNATURE *sig = o->optionalSignature;

    if (BIO_write(bp, "OCSP Request Data:\n", 19) <= 0)
        goto err;
    l = ASN1_INTEGER_get(inf->version);
    if (BIO_printf(bp, "    Version: %lu (0x%lx)", l + 1, l) <= 0)
        goto err;
    if (inf->requestorName != ((void*)0)) {
        if (BIO_write(bp, "\n    Requestor Name: ", 21) <= 0)
            goto err;
        GENERAL_NAME_print(bp, inf->requestorName);
    }
    if (BIO_write(bp, "\n    Requestor List:\n", 21) <= 0)
        goto err;
    for (i = 0; i < sk_OCSP_ONEREQ_num(inf->requestList); i++) {
        one = sk_OCSP_ONEREQ_value(inf->requestList, i);
        cid = one->reqCert;
        ocsp_certid_print(bp, cid, 8);
        if (!X509V3_extensions_print(bp,
                                     "Request Single Extensions",
                                     one->singleRequestExtensions, flags, 8))
            goto err;
    }
    if (!X509V3_extensions_print(bp, "Request Extensions",
                                 inf->requestExtensions, flags, 4))
        goto err;
    if (sig) {
        X509_signature_print(bp, &sig->signatureAlgorithm, sig->signature);
        for (i = 0; i < sk_X509_num(sig->certs); i++) {
            X509_print(bp, sk_X509_value(sig->certs, i));
            PEM_write_bio_X509(bp, sk_X509_value(sig->certs, i));
        }
    }
    return 1;
 err:
    return 0;
}
