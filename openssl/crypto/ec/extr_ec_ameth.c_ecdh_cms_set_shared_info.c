
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_6__* parameter; int algorithm; } ;
typedef TYPE_3__ X509_ALGOR ;
struct TYPE_10__ {TYPE_1__* sequence; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_9__ {unsigned char* data; int length; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef int CMS_RecipientInfo ;
typedef int ASN1_OCTET_STRING ;


 int CMS_RecipientInfo_kari_get0_alg (int *,TYPE_3__**,int **) ;
 int * CMS_RecipientInfo_kari_get0_ctx (int *) ;
 int CMS_SharedInfo_encode (unsigned char**,TYPE_3__*,int *,int) ;
 int EC_F_ECDH_CMS_SET_SHARED_INFO ;
 int EC_R_KDF_PARAMETER_ERROR ;
 int ECerr (int ,int ) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 scalar_t__ EVP_CIPHER_asn1_to_param (int *,TYPE_6__*) ;
 scalar_t__ EVP_CIPHER_mode (int const*) ;
 scalar_t__ EVP_CIPH_WRAP_MODE ;
 int EVP_EncryptInit_ex (int *,int const*,int *,int *,int *) ;
 scalar_t__ EVP_PKEY_CTX_set0_ecdh_kdf_ukm (int *,unsigned char*,int) ;
 scalar_t__ EVP_PKEY_CTX_set_ecdh_kdf_outlen (int *,int) ;
 int * EVP_get_cipherbyobj (int ) ;
 int OBJ_obj2nid (int ) ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ V_ASN1_SEQUENCE ;
 int X509_ALGOR_free (TYPE_3__*) ;
 TYPE_3__* d2i_X509_ALGOR (int *,unsigned char const**,int) ;
 int ecdh_cms_set_kdf_param (int *,int ) ;

__attribute__((used)) static int ecdh_cms_set_shared_info(EVP_PKEY_CTX *pctx, CMS_RecipientInfo *ri)
{
    int rv = 0;

    X509_ALGOR *alg, *kekalg = ((void*)0);
    ASN1_OCTET_STRING *ukm;
    const unsigned char *p;
    unsigned char *der = ((void*)0);
    int plen, keylen;
    const EVP_CIPHER *kekcipher;
    EVP_CIPHER_CTX *kekctx;

    if (!CMS_RecipientInfo_kari_get0_alg(ri, &alg, &ukm))
        return 0;

    if (!ecdh_cms_set_kdf_param(pctx, OBJ_obj2nid(alg->algorithm))) {
        ECerr(EC_F_ECDH_CMS_SET_SHARED_INFO, EC_R_KDF_PARAMETER_ERROR);
        return 0;
    }

    if (alg->parameter->type != V_ASN1_SEQUENCE)
        return 0;

    p = alg->parameter->value.sequence->data;
    plen = alg->parameter->value.sequence->length;
    kekalg = d2i_X509_ALGOR(((void*)0), &p, plen);
    if (!kekalg)
        goto err;
    kekctx = CMS_RecipientInfo_kari_get0_ctx(ri);
    if (!kekctx)
        goto err;
    kekcipher = EVP_get_cipherbyobj(kekalg->algorithm);
    if (!kekcipher || EVP_CIPHER_mode(kekcipher) != EVP_CIPH_WRAP_MODE)
        goto err;
    if (!EVP_EncryptInit_ex(kekctx, kekcipher, ((void*)0), ((void*)0), ((void*)0)))
        goto err;
    if (EVP_CIPHER_asn1_to_param(kekctx, kekalg->parameter) <= 0)
        goto err;

    keylen = EVP_CIPHER_CTX_key_length(kekctx);
    if (EVP_PKEY_CTX_set_ecdh_kdf_outlen(pctx, keylen) <= 0)
        goto err;

    plen = CMS_SharedInfo_encode(&der, kekalg, ukm, keylen);

    if (!plen)
        goto err;

    if (EVP_PKEY_CTX_set0_ecdh_kdf_ukm(pctx, der, plen) <= 0)
        goto err;
    der = ((void*)0);

    rv = 1;
 err:
    X509_ALGOR_free(kekalg);
    OPENSSL_free(der);
    return rv;
}
