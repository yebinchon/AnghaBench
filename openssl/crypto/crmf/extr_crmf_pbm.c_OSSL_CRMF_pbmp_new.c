
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mac; int iterationCount; int owf; int salt; } ;
typedef TYPE_1__ OSSL_CRMF_PBMPARAMETER ;


 int ASN1_INTEGER_set (int ,int) ;
 int ASN1_OCTET_STRING_set (int ,unsigned char*,int) ;
 int CRMF_F_OSSL_CRMF_PBMP_NEW ;
 int CRMF_R_CRMFERROR ;
 int CRMF_R_FAILURE_OBTAINING_RANDOM ;
 int CRMF_R_ITERATIONCOUNT_BELOW_100 ;
 int CRMF_R_SETTING_MAC_ALGOR_FAILURE ;
 int CRMF_R_SETTING_OWF_ALGOR_FAILURE ;
 int CRMFerr (int ,int ) ;
 int OBJ_nid2obj (int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int OSSL_CRMF_PBMPARAMETER_free (TYPE_1__*) ;
 TYPE_1__* OSSL_CRMF_PBMPARAMETER_new () ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_set0 (int ,int ,int ,int *) ;

OSSL_CRMF_PBMPARAMETER *OSSL_CRMF_pbmp_new(size_t slen, int owfnid,
                                           int itercnt, int macnid)
{
    OSSL_CRMF_PBMPARAMETER *pbm = ((void*)0);
    unsigned char *salt = ((void*)0);

    if ((pbm = OSSL_CRMF_PBMPARAMETER_new()) == ((void*)0))
        goto err;






    if ((salt = OPENSSL_malloc(slen)) == ((void*)0))
        goto err;
    if (RAND_bytes(salt, (int)slen) <= 0) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_FAILURE_OBTAINING_RANDOM);
        goto err;
    }
    if (!ASN1_OCTET_STRING_set(pbm->salt, salt, (int)slen))
        goto err;






    if (!X509_ALGOR_set0(pbm->owf, OBJ_nid2obj(owfnid), V_ASN1_UNDEF, ((void*)0))) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_SETTING_OWF_ALGOR_FAILURE);
        goto err;
    }
    if (itercnt < 100) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_ITERATIONCOUNT_BELOW_100);
        goto err;
    }

    if (!ASN1_INTEGER_set(pbm->iterationCount, itercnt)) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_CRMFERROR);
        goto err;
    }






    if (!X509_ALGOR_set0(pbm->mac, OBJ_nid2obj(macnid), V_ASN1_UNDEF, ((void*)0))) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_SETTING_MAC_ALGOR_FAILURE);
        goto err;
    }

    OPENSSL_free(salt);
    return pbm;
 err:
    OPENSSL_free(salt);
    OSSL_CRMF_PBMPARAMETER_free(pbm);
    return ((void*)0);
}
