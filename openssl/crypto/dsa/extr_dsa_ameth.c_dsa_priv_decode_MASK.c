#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {unsigned char* data; int length; } ;
struct TYPE_10__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/  p; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/  g; int /*<<< orphan*/ * pub_key; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ DSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_2__ ASN1_STRING ;
typedef  TYPE_3__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSA_F_DSA_PRIV_DECODE ; 
 int /*<<< orphan*/  DSA_R_BN_ERROR ; 
 int /*<<< orphan*/  DSA_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 scalar_t__ V_ASN1_NEG_INTEGER ; 
 int V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,void const**,int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC15(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    const X509_ALGOR *palg;
    ASN1_INTEGER *privkey = NULL;
    BN_CTX *ctx = NULL;

    DSA *dsa = NULL;

    int ret = 0;

    if (!FUNC11(NULL, &p, &pklen, &palg, p8))
        return 0;
    FUNC12(NULL, &ptype, &pval, palg);

    if ((privkey = FUNC13(NULL, &p, pklen)) == NULL)
        goto decerr;
    if (privkey->type == V_ASN1_NEG_INTEGER || ptype != V_ASN1_SEQUENCE)
        goto decerr;

    pstr = pval;
    pm = pstr->data;
    pmlen = pstr->length;
    if ((dsa = FUNC14(NULL, &pm, pmlen)) == NULL)
        goto decerr;
    /* We have parameters now set private key */
    if ((dsa->priv_key = FUNC6()) == NULL
        || !FUNC0(privkey, dsa->priv_key)) {
        FUNC9(DSA_F_DSA_PRIV_DECODE, DSA_R_BN_ERROR);
        goto dsaerr;
    }
    /* Calculate public key */
    if ((dsa->pub_key = FUNC5()) == NULL) {
        FUNC9(DSA_F_DSA_PRIV_DECODE, ERR_R_MALLOC_FAILURE);
        goto dsaerr;
    }
    if ((ctx = FUNC3()) == NULL) {
        FUNC9(DSA_F_DSA_PRIV_DECODE, ERR_R_MALLOC_FAILURE);
        goto dsaerr;
    }

    FUNC7(dsa->priv_key, BN_FLG_CONSTTIME);
    if (!FUNC4(dsa->pub_key, dsa->g, dsa->priv_key, dsa->p, ctx)) {
        FUNC9(DSA_F_DSA_PRIV_DECODE, DSA_R_BN_ERROR);
        goto dsaerr;
    }

    dsa->dirty_cnt++;
    FUNC10(pkey, dsa);

    ret = 1;
    goto done;

 decerr:
    FUNC9(DSA_F_DSA_PRIV_DECODE, DSA_R_DECODE_ERROR);
 dsaerr:
    FUNC8(dsa);
 done:
    FUNC2(ctx);
    FUNC1(privkey);
    return ret;
}