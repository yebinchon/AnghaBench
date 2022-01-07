
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_PKEY ;






 int CMS_RECIPINFO_NONE ;
 int CMS_SignerInfo_get0_algs (void*,int *,int *,TYPE_1__**,TYPE_1__**) ;
 int EVP_PKEY_id (int *) ;
 int NID_sha256 ;
 int NID_undef ;
 int OBJ_find_sigid_by_algs (int*,int,int ) ;
 int OBJ_nid2obj (int) ;
 int OBJ_obj2nid (int *) ;
 int PKCS7_SIGNER_INFO_get0_algs (void*,int *,TYPE_1__**,TYPE_1__**) ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_set0 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int dsa_pkey_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
    case 128:
        if (arg1 == 0) {
            int snid, hnid;
            X509_ALGOR *alg1, *alg2;
            PKCS7_SIGNER_INFO_get0_algs(arg2, ((void*)0), &alg1, &alg2);
            if (alg1 == ((void*)0) || alg1->algorithm == ((void*)0))
                return -1;
            hnid = OBJ_obj2nid(alg1->algorithm);
            if (hnid == NID_undef)
                return -1;
            if (!OBJ_find_sigid_by_algs(&snid, hnid, EVP_PKEY_id(pkey)))
                return -1;
            X509_ALGOR_set0(alg2, OBJ_nid2obj(snid), V_ASN1_UNDEF, 0);
        }
        return 1;

    case 130:
        if (arg1 == 0) {
            int snid, hnid;
            X509_ALGOR *alg1, *alg2;
            CMS_SignerInfo_get0_algs(arg2, ((void*)0), ((void*)0), &alg1, &alg2);
            if (alg1 == ((void*)0) || alg1->algorithm == ((void*)0))
                return -1;
            hnid = OBJ_obj2nid(alg1->algorithm);
            if (hnid == NID_undef)
                return -1;
            if (!OBJ_find_sigid_by_algs(&snid, hnid, EVP_PKEY_id(pkey)))
                return -1;
            X509_ALGOR_set0(alg2, OBJ_nid2obj(snid), V_ASN1_UNDEF, 0);
        }
        return 1;

    case 131:
        *(int *)arg2 = CMS_RECIPINFO_NONE;
        return 1;


    case 129:
        *(int *)arg2 = NID_sha256;
        return 1;

    default:
        return -2;

    }

}
