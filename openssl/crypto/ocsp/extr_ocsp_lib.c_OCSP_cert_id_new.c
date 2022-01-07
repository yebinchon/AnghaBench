
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_9__ {TYPE_8__* parameter; int * algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
struct TYPE_12__ {int type; } ;
struct TYPE_11__ {int length; int data; } ;
struct TYPE_10__ {int serialNumber; int issuerKeyHash; int issuerNameHash; TYPE_1__ hashAlgorithm; } ;
typedef TYPE_2__ OCSP_CERTID ;
typedef int EVP_MD ;
typedef int ASN1_INTEGER ;
typedef TYPE_3__ ASN1_BIT_STRING ;


 int ASN1_OBJECT_free (int *) ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,unsigned int) ;
 scalar_t__ ASN1_STRING_copy (int *,int const*) ;
 TYPE_8__* ASN1_TYPE_new () ;
 int EVP_Digest (int ,int ,unsigned char*,unsigned int*,int const*,int *) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_type (int const*) ;
 int NID_undef ;
 int * OBJ_nid2obj (int) ;
 int OCSP_CERTID_free (TYPE_2__*) ;
 TYPE_2__* OCSP_CERTID_new () ;
 int OCSP_F_OCSP_CERT_ID_NEW ;
 int OCSP_R_DIGEST_ERR ;
 int OCSP_R_UNKNOWN_NID ;
 int OCSPerr (int ,int ) ;
 int V_ASN1_NULL ;
 int X509_NAME_digest (int const*,int const*,unsigned char*,unsigned int*) ;

OCSP_CERTID *OCSP_cert_id_new(const EVP_MD *dgst,
                              const X509_NAME *issuerName,
                              const ASN1_BIT_STRING *issuerKey,
                              const ASN1_INTEGER *serialNumber)
{
    int nid;
    unsigned int i;
    X509_ALGOR *alg;
    OCSP_CERTID *cid = ((void*)0);
    unsigned char md[EVP_MAX_MD_SIZE];

    if ((cid = OCSP_CERTID_new()) == ((void*)0))
        goto err;

    alg = &cid->hashAlgorithm;
    ASN1_OBJECT_free(alg->algorithm);
    if ((nid = EVP_MD_type(dgst)) == NID_undef) {
        OCSPerr(OCSP_F_OCSP_CERT_ID_NEW, OCSP_R_UNKNOWN_NID);
        goto err;
    }
    if ((alg->algorithm = OBJ_nid2obj(nid)) == ((void*)0))
        goto err;
    if ((alg->parameter = ASN1_TYPE_new()) == ((void*)0))
        goto err;
    alg->parameter->type = V_ASN1_NULL;

    if (!X509_NAME_digest(issuerName, dgst, md, &i))
        goto digerr;
    if (!(ASN1_OCTET_STRING_set(&cid->issuerNameHash, md, i)))
        goto err;


    if (!EVP_Digest(issuerKey->data, issuerKey->length, md, &i, dgst, ((void*)0)))
        goto err;

    if (!(ASN1_OCTET_STRING_set(&cid->issuerKeyHash, md, i)))
        goto err;

    if (serialNumber) {
        if (ASN1_STRING_copy(&cid->serialNumber, serialNumber) == 0)
            goto err;
    }
    return cid;
 digerr:
    OCSPerr(OCSP_F_OCSP_CERT_ID_NEW, OCSP_R_DIGEST_ERR);
 err:
    OCSP_CERTID_free(cid);
    return ((void*)0);
}
