#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/ * parameter; int /*<<< orphan*/  const* algorithm; } ;
typedef  TYPE_3__ X509_ALGOR ;
struct TYPE_23__ {int flags; } ;
struct TYPE_20__ {TYPE_1__* dh; } ;
struct TYPE_22__ {TYPE_2__ pkey; } ;
struct TYPE_19__ {int /*<<< orphan*/  pub_key; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_4__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  CMS_RecipientInfo ;
typedef  TYPE_5__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;
typedef  TYPE_5__ ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__**,TYPE_5__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 
 int EVP_PKEY_DH_KDF_NONE ; 
 int EVP_PKEY_DH_KDF_X9_42 ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int NID_dhpublicnumber ; 
 int NID_id_smime_alg_ESDH ; 
 scalar_t__ NID_sha1 ; 
 scalar_t__ NID_undef ; 
 int /*<<< orphan*/  const* FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned char*) ; 
 unsigned char* FUNC28 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC33 (int /*<<< orphan*/ *,unsigned char**) ; 
 int FUNC34 (TYPE_3__*,unsigned char**) ; 

__attribute__((used)) static int FUNC35(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pctx;
    EVP_PKEY *pkey;
    EVP_CIPHER_CTX *ctx;
    int keylen;
    X509_ALGOR *talg, *wrap_alg = NULL;
    const ASN1_OBJECT *aoid;
    ASN1_BIT_STRING *pubkey;
    ASN1_STRING *wrap_str;
    ASN1_OCTET_STRING *ukm;
    unsigned char *penc = NULL, *dukm = NULL;
    int penclen;
    size_t dukmlen = 0;
    int rv = 0;
    int kdf_type, wrap_nid;
    const EVP_MD *kdf_md;

    pctx = FUNC9(ri);
    if (pctx == NULL)
        return 0;
    /* Get ephemeral key */
    pkey = FUNC17(pctx);
    if (!FUNC12(ri, &talg, &pubkey,
                                             NULL, NULL, NULL))
        goto err;
    FUNC30(&aoid, NULL, NULL, talg);
    /* Is everything uninitialised? */
    if (aoid == FUNC26(NID_undef)) {
        ASN1_INTEGER *pubk = FUNC8(pkey->pkey.dh->pub_key, NULL);

        if (pubk == NULL)
            goto err;
        /* Set the key */

        penclen = FUNC33(pubk, &penc);
        FUNC0(pubk);
        if (penclen <= 0)
            goto err;
        FUNC4(pubkey, penc, penclen);
        pubkey->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        pubkey->flags |= ASN1_STRING_FLAG_BITS_LEFT;

        penc = NULL;
        FUNC32(talg, FUNC26(NID_dhpublicnumber),
                        V_ASN1_UNDEF, NULL);
    }

    /* See if custom parameters set */
    kdf_type = FUNC19(pctx);
    if (kdf_type <= 0)
        goto err;
    if (!FUNC18(pctx, &kdf_md))
        goto err;

    if (kdf_type == EVP_PKEY_DH_KDF_NONE) {
        kdf_type = EVP_PKEY_DH_KDF_X9_42;
        if (FUNC24(pctx, kdf_type) <= 0)
            goto err;
    } else if (kdf_type != EVP_PKEY_DH_KDF_X9_42)
        /* Unknown KDF */
        goto err;
    if (kdf_md == NULL) {
        /* Only SHA1 supported */
        kdf_md = FUNC25();
        if (FUNC22(pctx, kdf_md) <= 0)
            goto err;
    } else if (FUNC16(kdf_md) != NID_sha1)
        /* Unsupported digest */
        goto err;

    if (!FUNC10(ri, &talg, &ukm))
        goto err;

    /* Get wrap NID */
    ctx = FUNC11(ri);
    wrap_nid = FUNC14(ctx);
    if (FUNC20(pctx, FUNC26(wrap_nid)) <= 0)
        goto err;
    keylen = FUNC13(ctx);

    /* Package wrap algorithm in an AlgorithmIdentifier */

    wrap_alg = FUNC31();
    if (wrap_alg == NULL)
        goto err;
    wrap_alg->algorithm = FUNC26(wrap_nid);
    wrap_alg->parameter = FUNC7();
    if (wrap_alg->parameter == NULL)
        goto err;
    if (FUNC15(ctx, wrap_alg->parameter) <= 0)
        goto err;
    if (FUNC6(wrap_alg->parameter) == NID_undef) {
        FUNC5(wrap_alg->parameter);
        wrap_alg->parameter = NULL;
    }

    if (FUNC23(pctx, keylen) <= 0)
        goto err;

    if (ukm) {
        dukmlen = FUNC2(ukm);
        dukm = FUNC28(FUNC1(ukm), dukmlen);
        if (!dukm)
            goto err;
    }

    if (FUNC21(pctx, dukm, dukmlen) <= 0)
        goto err;
    dukm = NULL;

    /*
     * Now need to wrap encoding of wrap AlgorithmIdentifier into parameter
     * of another AlgorithmIdentifier.
     */
    penc = NULL;
    penclen = FUNC34(wrap_alg, &penc);
    if (penc == NULL || penclen == 0)
        goto err;
    wrap_str = FUNC3();
    if (wrap_str == NULL)
        goto err;
    FUNC4(wrap_str, penc, penclen);
    penc = NULL;
    FUNC32(talg, FUNC26(NID_id_smime_alg_ESDH),
                    V_ASN1_SEQUENCE, wrap_str);

    rv = 1;

 err:
    FUNC27(penc);
    FUNC29(wrap_alg);
    FUNC27(dukm);
    return rv;
}