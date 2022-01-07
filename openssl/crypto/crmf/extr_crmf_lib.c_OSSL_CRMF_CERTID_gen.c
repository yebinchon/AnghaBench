
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_9__ {int * serialNumber; TYPE_2__* issuer; } ;
struct TYPE_7__ {int directoryName; } ;
struct TYPE_8__ {int type; TYPE_1__ d; } ;
typedef TYPE_3__ OSSL_CRMF_CERTID ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_dup (int const*) ;
 int ASN1_INTEGER_free (int *) ;
 int CRMF_F_OSSL_CRMF_CERTID_GEN ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 int GEN_DIRNAME ;
 int OSSL_CRMF_CERTID_free (TYPE_3__*) ;
 TYPE_3__* OSSL_CRMF_CERTID_new () ;
 int X509_NAME_set (int *,int const*) ;

OSSL_CRMF_CERTID *OSSL_CRMF_CERTID_gen(const X509_NAME *issuer,
                                       const ASN1_INTEGER *serial)
{
    OSSL_CRMF_CERTID *cid = ((void*)0);

    if (issuer == ((void*)0) || serial == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_CERTID_GEN, CRMF_R_NULL_ARGUMENT);
        return ((void*)0);
    }

    if ((cid = OSSL_CRMF_CERTID_new()) == ((void*)0))
        goto err;

    if (!X509_NAME_set(&cid->issuer->d.directoryName, issuer))
        goto err;
    cid->issuer->type = GEN_DIRNAME;

    ASN1_INTEGER_free(cid->serialNumber);
    if ((cid->serialNumber = ASN1_INTEGER_dup(serial)) == ((void*)0))
        goto err;

    return cid;

 err:
    OSSL_CRMF_CERTID_free(cid);
    return ((void*)0);
}
