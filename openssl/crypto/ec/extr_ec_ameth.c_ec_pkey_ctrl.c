
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_PKEY ;
 int CMS_RECIPINFO_AGREE ;
 int CMS_SignerInfo_get0_algs (void*,int *,int *,TYPE_1__**,TYPE_1__**) ;
 int EC_KEY_key2buf (int ,int ,void*,int *) ;
 int EC_KEY_oct2key (int ,void*,long,int *) ;
 int EVP_PKEY_SM2 ;
 int EVP_PKEY_get0_EC_KEY (int *) ;
 int EVP_PKEY_id (int *) ;
 int NID_sha256 ;
 int NID_sm3 ;
 int NID_undef ;
 int OBJ_find_sigid_by_algs (int*,int,int ) ;
 int OBJ_nid2obj (int) ;
 int OBJ_obj2nid (int *) ;
 int PKCS7_SIGNER_INFO_get0_algs (void*,int *,TYPE_1__**,TYPE_1__**) ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_set0 (TYPE_1__*,int ,int ,int ) ;
 int ecdh_cms_decrypt (void*) ;
 int ecdh_cms_encrypt (void*) ;

__attribute__((used)) static int ec_pkey_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
    case 129:
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

    case 132:
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

    case 134:
        if (arg1 == 1)
            return ecdh_cms_decrypt(arg2);
        else if (arg1 == 0)
            return ecdh_cms_encrypt(arg2);
        return -2;

    case 133:
        *(int *)arg2 = CMS_RECIPINFO_AGREE;
        return 1;


    case 131:
        if (EVP_PKEY_id(pkey) == EVP_PKEY_SM2) {

            *(int *)arg2 = NID_sm3;
        } else {
            *(int *)arg2 = NID_sha256;
        }
        return 1;

    case 128:
        return EC_KEY_oct2key(EVP_PKEY_get0_EC_KEY(pkey), arg2, arg1, ((void*)0));

    case 130:
        return EC_KEY_key2buf(EVP_PKEY_get0_EC_KEY(pkey),
                              POINT_CONVERSION_UNCOMPRESSED, arg2, ((void*)0));

    default:
        return -2;

    }

}
