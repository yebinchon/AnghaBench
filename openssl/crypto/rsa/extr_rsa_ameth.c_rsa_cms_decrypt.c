
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* parameter; int algorithm; } ;
typedef TYPE_4__ X509_ALGOR ;
struct TYPE_14__ {TYPE_4__* pSourceFunc; int hashFunc; int maskHash; } ;
struct TYPE_11__ {TYPE_1__* octet_string; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_10__ {unsigned char* data; int length; } ;
typedef TYPE_5__ RSA_OAEP_PARAMS ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef int CMS_RecipientInfo ;


 int * CMS_RecipientInfo_get0_pkey_ctx (int *) ;
 int CMS_RecipientInfo_ktri_get0_algs (int *,int *,int *,TYPE_4__**) ;
 scalar_t__ EVP_PKEY_CTX_set0_rsa_oaep_label (int *,unsigned char*,int) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_mgf1_md (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_oaep_md (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_padding (int *,int ) ;
 scalar_t__ NID_pSpecified ;
 int NID_rsaEncryption ;
 int NID_rsaesOaep ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int RSA_F_RSA_CMS_DECRYPT ;
 int RSA_OAEP_PARAMS_free (TYPE_5__*) ;
 int RSA_PKCS1_OAEP_PADDING ;
 int RSA_R_INVALID_LABEL ;
 int RSA_R_INVALID_OAEP_PARAMETERS ;
 int RSA_R_UNSUPPORTED_ENCRYPTION_TYPE ;
 int RSA_R_UNSUPPORTED_LABEL_SOURCE ;
 int RSAerr (int ,int ) ;
 scalar_t__ V_ASN1_OCTET_STRING ;
 int * rsa_algor_to_md (int ) ;
 TYPE_5__* rsa_oaep_decode (TYPE_4__*) ;

__attribute__((used)) static int rsa_cms_decrypt(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pkctx;
    X509_ALGOR *cmsalg;
    int nid;
    int rv = -1;
    unsigned char *label = ((void*)0);
    int labellen = 0;
    const EVP_MD *mgf1md = ((void*)0), *md = ((void*)0);
    RSA_OAEP_PARAMS *oaep;

    pkctx = CMS_RecipientInfo_get0_pkey_ctx(ri);
    if (pkctx == ((void*)0))
        return 0;
    if (!CMS_RecipientInfo_ktri_get0_algs(ri, ((void*)0), ((void*)0), &cmsalg))
        return -1;
    nid = OBJ_obj2nid(cmsalg->algorithm);
    if (nid == NID_rsaEncryption)
        return 1;
    if (nid != NID_rsaesOaep) {
        RSAerr(RSA_F_RSA_CMS_DECRYPT, RSA_R_UNSUPPORTED_ENCRYPTION_TYPE);
        return -1;
    }

    oaep = rsa_oaep_decode(cmsalg);

    if (oaep == ((void*)0)) {
        RSAerr(RSA_F_RSA_CMS_DECRYPT, RSA_R_INVALID_OAEP_PARAMETERS);
        goto err;
    }

    mgf1md = rsa_algor_to_md(oaep->maskHash);
    if (mgf1md == ((void*)0))
        goto err;
    md = rsa_algor_to_md(oaep->hashFunc);
    if (md == ((void*)0))
        goto err;

    if (oaep->pSourceFunc != ((void*)0)) {
        X509_ALGOR *plab = oaep->pSourceFunc;

        if (OBJ_obj2nid(plab->algorithm) != NID_pSpecified) {
            RSAerr(RSA_F_RSA_CMS_DECRYPT, RSA_R_UNSUPPORTED_LABEL_SOURCE);
            goto err;
        }
        if (plab->parameter->type != V_ASN1_OCTET_STRING) {
            RSAerr(RSA_F_RSA_CMS_DECRYPT, RSA_R_INVALID_LABEL);
            goto err;
        }

        label = plab->parameter->value.octet_string->data;

        plab->parameter->value.octet_string->data = ((void*)0);
        labellen = plab->parameter->value.octet_string->length;
    }

    if (EVP_PKEY_CTX_set_rsa_padding(pkctx, RSA_PKCS1_OAEP_PADDING) <= 0)
        goto err;
    if (EVP_PKEY_CTX_set_rsa_oaep_md(pkctx, md) <= 0)
        goto err;
    if (EVP_PKEY_CTX_set_rsa_mgf1_md(pkctx, mgf1md) <= 0)
        goto err;
    if (EVP_PKEY_CTX_set0_rsa_oaep_label(pkctx, label, labellen) <= 0)
        goto err;

    rv = 1;

 err:
    RSA_OAEP_PARAMS_free(oaep);
    return rv;
}
