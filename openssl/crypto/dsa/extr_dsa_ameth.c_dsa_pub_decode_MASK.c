#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_8__ {unsigned char* data; int length; } ;
struct TYPE_7__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * pub_key; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ DSA ;
typedef  TYPE_2__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DSA_F_DSA_PUB_DECODE ; 
 int /*<<< orphan*/  DSA_R_BN_DECODE_ERROR ; 
 int /*<<< orphan*/  DSA_R_DECODE_ERROR ; 
 int /*<<< orphan*/  DSA_R_PARAMETER_ENCODING_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int V_ASN1_NULL ; 
 int V_ASN1_SEQUENCE ; 
 int V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,void const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC10(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    X509_ALGOR *palg;
    ASN1_INTEGER *public_key = NULL;

    DSA *dsa = NULL;

    if (!FUNC7(NULL, &p, &pklen, &palg, pubkey))
        return 0;
    FUNC6(NULL, &ptype, &pval, palg);

    if (ptype == V_ASN1_SEQUENCE) {
        pstr = pval;
        pm = pstr->data;
        pmlen = pstr->length;

        if ((dsa = FUNC9(NULL, &pm, pmlen)) == NULL) {
            FUNC4(DSA_F_DSA_PUB_DECODE, DSA_R_DECODE_ERROR);
            goto err;
        }

    } else if ((ptype == V_ASN1_NULL) || (ptype == V_ASN1_UNDEF)) {
        if ((dsa = FUNC3()) == NULL) {
            FUNC4(DSA_F_DSA_PUB_DECODE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    } else {
        FUNC4(DSA_F_DSA_PUB_DECODE, DSA_R_PARAMETER_ENCODING_ERROR);
        goto err;
    }

    if ((public_key = FUNC8(NULL, &p, pklen)) == NULL) {
        FUNC4(DSA_F_DSA_PUB_DECODE, DSA_R_DECODE_ERROR);
        goto err;
    }

    if ((dsa->pub_key = FUNC1(public_key, NULL)) == NULL) {
        FUNC4(DSA_F_DSA_PUB_DECODE, DSA_R_BN_DECODE_ERROR);
        goto err;
    }

    dsa->dirty_cnt++;
    FUNC0(public_key);
    FUNC5(pkey, dsa);
    return 1;

 err:
    FUNC0(public_key);
    FUNC2(dsa);
    return 0;

}