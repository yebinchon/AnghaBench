
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_3__ {int publicKey; int * serialNumber; int issuer; int subject; } ;
typedef TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;
typedef int EVP_PKEY ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_dup (int const*) ;
 int ASN1_INTEGER_free (int *) ;
 int CRMF_F_OSSL_CRMF_CERTTEMPLATE_FILL ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 int X509_NAME_set (int *,int const*) ;
 int X509_PUBKEY_set (int *,int *) ;

int OSSL_CRMF_CERTTEMPLATE_fill(OSSL_CRMF_CERTTEMPLATE *tmpl,
                                EVP_PKEY *pubkey,
                                const X509_NAME *subject,
                                const X509_NAME *issuer,
                                const ASN1_INTEGER *serial)
{
    if (tmpl == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_CERTTEMPLATE_FILL, CRMF_R_NULL_ARGUMENT);
        return 0;
    }
    if (subject != ((void*)0) && !X509_NAME_set(&tmpl->subject, subject))
        return 0;
    if (issuer != ((void*)0) && !X509_NAME_set(&tmpl->issuer, issuer))
        return 0;
    if (serial != ((void*)0)) {
        ASN1_INTEGER_free(tmpl->serialNumber);
        if ((tmpl->serialNumber = ASN1_INTEGER_dup(serial)) == ((void*)0))
            return 0;
    }
    if (pubkey != ((void*)0) && !X509_PUBKEY_set(&tmpl->publicKey, pubkey))
        return 0;
    return 1;
}
