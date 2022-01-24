#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_6__* parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_3__ X509_ALGOR ;
struct TYPE_9__ {TYPE_1__* sequence; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_8__ {unsigned char* data; int length; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  CMS_RecipientInfo ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_CMS_SET_SHARED_INFO ; 
 int /*<<< orphan*/  DH_R_KDF_PARAMETER_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_CIPH_WRAP_MODE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_DH_KDF_X9_42 ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ NID_id_smime_alg_ESDH ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*) ; 
 unsigned char* FUNC20 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC23(EVP_PKEY_CTX *pctx, CMS_RecipientInfo *ri)
{
    int rv = 0;

    X509_ALGOR *alg, *kekalg = NULL;
    ASN1_OCTET_STRING *ukm;
    const unsigned char *p;
    unsigned char *dukm = NULL;
    size_t dukmlen = 0;
    int keylen, plen;
    const EVP_CIPHER *kekcipher;
    EVP_CIPHER_CTX *kekctx;

    if (!FUNC2(ri, &alg, &ukm))
        goto err;

    /*
     * For DH we only have one OID permissible. If ever any more get defined
     * we will need something cleverer.
     */
    if (FUNC18(alg->algorithm) != NID_id_smime_alg_ESDH) {
        FUNC4(DH_F_DH_CMS_SET_SHARED_INFO, DH_R_KDF_PARAMETER_ERROR);
        goto err;
    }

    if (FUNC14(pctx, EVP_PKEY_DH_KDF_X9_42) <= 0)
        goto err;

    if (FUNC12(pctx, FUNC16()) <= 0)
        goto err;

    if (alg->parameter->type != V_ASN1_SEQUENCE)
        goto err;

    p = alg->parameter->value.sequence->data;
    plen = alg->parameter->value.sequence->length;
    kekalg = FUNC22(NULL, &p, plen);
    if (!kekalg)
        goto err;
    kekctx = FUNC3(ri);
    if (!kekctx)
        goto err;
    kekcipher = FUNC15(kekalg->algorithm);
    if (!kekcipher || FUNC7(kekcipher) != EVP_CIPH_WRAP_MODE)
        goto err;
    if (!FUNC9(kekctx, kekcipher, NULL, NULL, NULL))
        goto err;
    if (FUNC6(kekctx, kekalg->parameter) <= 0)
        goto err;

    keylen = FUNC5(kekctx);
    if (FUNC13(pctx, keylen) <= 0)
        goto err;
    /* Use OBJ_nid2obj to ensure we use built in OID that isn't freed */
    if (FUNC10(pctx,
                                     FUNC17(FUNC8(kekcipher)))
        <= 0)
        goto err;

    if (ukm) {
        dukmlen = FUNC1(ukm);
        dukm = FUNC20(FUNC0(ukm), dukmlen);
        if (!dukm)
            goto err;
    }

    if (FUNC11(pctx, dukm, dukmlen) <= 0)
        goto err;
    dukm = NULL;

    rv = 1;
 err:
    FUNC21(kekalg);
    FUNC19(dukm);
    return rv;
}