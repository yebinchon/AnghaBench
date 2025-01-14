
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int * parameter; int const* algorithm; } ;
typedef TYPE_2__ X509_ALGOR ;
struct TYPE_22__ {int flags; } ;
struct TYPE_19__ {int * ec; } ;
struct TYPE_21__ {TYPE_1__ pkey; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;
typedef int EC_KEY ;
typedef int CMS_RecipientInfo ;
typedef TYPE_4__ ASN1_STRING ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;
typedef TYPE_4__ ASN1_BIT_STRING ;


 int ASN1_STRING_FLAG_BITS_LEFT ;
 TYPE_4__* ASN1_STRING_new () ;
 int ASN1_STRING_set0 (TYPE_4__*,unsigned char*,int) ;
 int ASN1_TYPE_free (int *) ;
 scalar_t__ ASN1_TYPE_get (int *) ;
 int * ASN1_TYPE_new () ;
 int * CMS_RecipientInfo_get0_pkey_ctx (int *) ;
 int CMS_RecipientInfo_kari_get0_alg (int *,TYPE_2__**,int **) ;
 int * CMS_RecipientInfo_kari_get0_ctx (int *) ;
 int CMS_RecipientInfo_kari_get0_orig_id (int *,TYPE_2__**,TYPE_4__**,int *,int *,int *) ;
 int CMS_SharedInfo_encode (unsigned char**,TYPE_2__*,int *,int) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 int EVP_CIPHER_CTX_type (int *) ;
 scalar_t__ EVP_CIPHER_param_to_asn1 (int *,int *) ;
 int EVP_MD_type (int const*) ;
 TYPE_3__* EVP_PKEY_CTX_get0_pkey (int *) ;
 int EVP_PKEY_CTX_get_ecdh_cofactor_mode (int *) ;
 int EVP_PKEY_CTX_get_ecdh_kdf_md (int *,int const**) ;
 int EVP_PKEY_CTX_get_ecdh_kdf_type (int *) ;
 scalar_t__ EVP_PKEY_CTX_set0_ecdh_kdf_ukm (int *,unsigned char*,int) ;
 scalar_t__ EVP_PKEY_CTX_set_ecdh_kdf_md (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_ecdh_kdf_outlen (int *,int) ;
 scalar_t__ EVP_PKEY_CTX_set_ecdh_kdf_type (int *,int) ;
 int EVP_PKEY_ECDH_KDF_NONE ;
 int EVP_PKEY_ECDH_KDF_X9_63 ;
 int * EVP_sha1 () ;
 int NID_X9_62_id_ecPublicKey ;
 int NID_dh_cofactor_kdf ;
 int NID_dh_std_kdf ;
 scalar_t__ NID_undef ;
 int OBJ_find_sigid_by_algs (int*,int ,int) ;
 int const* OBJ_nid2obj (int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_free (TYPE_2__*) ;
 int X509_ALGOR_get0 (int const**,int *,int *,TYPE_2__*) ;
 TYPE_2__* X509_ALGOR_new () ;
 int X509_ALGOR_set0 (TYPE_2__*,int const*,int ,TYPE_4__*) ;
 int i2d_X509_ALGOR (TYPE_2__*,unsigned char**) ;
 int i2o_ECPublicKey (int *,unsigned char**) ;

__attribute__((used)) static int ecdh_cms_encrypt(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pctx;
    EVP_PKEY *pkey;
    EVP_CIPHER_CTX *ctx;
    int keylen;
    X509_ALGOR *talg, *wrap_alg = ((void*)0);
    const ASN1_OBJECT *aoid;
    ASN1_BIT_STRING *pubkey;
    ASN1_STRING *wrap_str;
    ASN1_OCTET_STRING *ukm;
    unsigned char *penc = ((void*)0);
    int penclen;
    int rv = 0;
    int ecdh_nid, kdf_type, kdf_nid, wrap_nid;
    const EVP_MD *kdf_md;
    pctx = CMS_RecipientInfo_get0_pkey_ctx(ri);
    if (!pctx)
        return 0;

    pkey = EVP_PKEY_CTX_get0_pkey(pctx);
    if (!CMS_RecipientInfo_kari_get0_orig_id(ri, &talg, &pubkey,
                                             ((void*)0), ((void*)0), ((void*)0)))
        goto err;
    X509_ALGOR_get0(&aoid, ((void*)0), ((void*)0), talg);

    if (aoid == OBJ_nid2obj(NID_undef)) {

        EC_KEY *eckey = pkey->pkey.ec;

        unsigned char *p;

        penclen = i2o_ECPublicKey(eckey, ((void*)0));
        if (penclen <= 0)
            goto err;
        penc = OPENSSL_malloc(penclen);
        if (penc == ((void*)0))
            goto err;
        p = penc;
        penclen = i2o_ECPublicKey(eckey, &p);
        if (penclen <= 0)
            goto err;
        ASN1_STRING_set0(pubkey, penc, penclen);
        pubkey->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        pubkey->flags |= ASN1_STRING_FLAG_BITS_LEFT;

        penc = ((void*)0);
        X509_ALGOR_set0(talg, OBJ_nid2obj(NID_X9_62_id_ecPublicKey),
                        V_ASN1_UNDEF, ((void*)0));
    }


    kdf_type = EVP_PKEY_CTX_get_ecdh_kdf_type(pctx);
    if (kdf_type <= 0)
        goto err;
    if (!EVP_PKEY_CTX_get_ecdh_kdf_md(pctx, &kdf_md))
        goto err;
    ecdh_nid = EVP_PKEY_CTX_get_ecdh_cofactor_mode(pctx);
    if (ecdh_nid < 0)
        goto err;
    else if (ecdh_nid == 0)
        ecdh_nid = NID_dh_std_kdf;
    else if (ecdh_nid == 1)
        ecdh_nid = NID_dh_cofactor_kdf;

    if (kdf_type == EVP_PKEY_ECDH_KDF_NONE) {
        kdf_type = EVP_PKEY_ECDH_KDF_X9_63;
        if (EVP_PKEY_CTX_set_ecdh_kdf_type(pctx, kdf_type) <= 0)
            goto err;
    } else

        goto err;
    if (kdf_md == ((void*)0)) {

        kdf_md = EVP_sha1();
        if (EVP_PKEY_CTX_set_ecdh_kdf_md(pctx, kdf_md) <= 0)
            goto err;
    }

    if (!CMS_RecipientInfo_kari_get0_alg(ri, &talg, &ukm))
        goto err;



    if (!OBJ_find_sigid_by_algs(&kdf_nid, EVP_MD_type(kdf_md), ecdh_nid))
        goto err;

    ctx = CMS_RecipientInfo_kari_get0_ctx(ri);
    wrap_nid = EVP_CIPHER_CTX_type(ctx);
    keylen = EVP_CIPHER_CTX_key_length(ctx);



    wrap_alg = X509_ALGOR_new();
    if (wrap_alg == ((void*)0))
        goto err;
    wrap_alg->algorithm = OBJ_nid2obj(wrap_nid);
    wrap_alg->parameter = ASN1_TYPE_new();
    if (wrap_alg->parameter == ((void*)0))
        goto err;
    if (EVP_CIPHER_param_to_asn1(ctx, wrap_alg->parameter) <= 0)
        goto err;
    if (ASN1_TYPE_get(wrap_alg->parameter) == NID_undef) {
        ASN1_TYPE_free(wrap_alg->parameter);
        wrap_alg->parameter = ((void*)0);
    }

    if (EVP_PKEY_CTX_set_ecdh_kdf_outlen(pctx, keylen) <= 0)
        goto err;

    penclen = CMS_SharedInfo_encode(&penc, wrap_alg, ukm, keylen);

    if (!penclen)
        goto err;

    if (EVP_PKEY_CTX_set0_ecdh_kdf_ukm(pctx, penc, penclen) <= 0)
        goto err;
    penc = ((void*)0);





    penclen = i2d_X509_ALGOR(wrap_alg, &penc);
    if (!penc || !penclen)
        goto err;
    wrap_str = ASN1_STRING_new();
    if (wrap_str == ((void*)0))
        goto err;
    ASN1_STRING_set0(wrap_str, penc, penclen);
    penc = ((void*)0);
    X509_ALGOR_set0(talg, OBJ_nid2obj(kdf_nid), V_ASN1_SEQUENCE, wrap_str);

    rv = 1;

 err:
    OPENSSL_free(penc);
    X509_ALGOR_free(wrap_alg);
    return rv;
}
