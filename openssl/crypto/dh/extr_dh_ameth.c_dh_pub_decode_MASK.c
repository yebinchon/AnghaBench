#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_14__ {unsigned char* data; int length; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pub_key; } ;
struct TYPE_12__ {TYPE_1__* ameth; } ;
struct TYPE_11__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  TYPE_3__ DH ;
typedef  TYPE_4__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_PUB_DECODE ; 
 int /*<<< orphan*/  DH_R_BN_DECODE_ERROR ; 
 int /*<<< orphan*/  DH_R_DECODE_ERROR ; 
 int /*<<< orphan*/  DH_R_PARAMETER_ENCODING_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,void const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 TYPE_3__* FUNC8 (TYPE_2__*,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC9(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    X509_ALGOR *palg;
    ASN1_INTEGER *public_key = NULL;

    DH *dh = NULL;

    if (!FUNC6(NULL, &p, &pklen, &palg, pubkey))
        return 0;
    FUNC5(NULL, &ptype, &pval, palg);

    if (ptype != V_ASN1_SEQUENCE) {
        FUNC3(DH_F_DH_PUB_DECODE, DH_R_PARAMETER_ENCODING_ERROR);
        goto err;
    }

    pstr = pval;
    pm = pstr->data;
    pmlen = pstr->length;

    if ((dh = FUNC8(pkey, &pm, pmlen)) == NULL) {
        FUNC3(DH_F_DH_PUB_DECODE, DH_R_DECODE_ERROR);
        goto err;
    }

    if ((public_key = FUNC7(NULL, &p, pklen)) == NULL) {
        FUNC3(DH_F_DH_PUB_DECODE, DH_R_DECODE_ERROR);
        goto err;
    }

    /* We have parameters now set public key */
    if ((dh->pub_key = FUNC1(public_key, NULL)) == NULL) {
        FUNC3(DH_F_DH_PUB_DECODE, DH_R_BN_DECODE_ERROR);
        goto err;
    }

    FUNC0(public_key);
    FUNC4(pkey, pkey->ameth->pkey_id, dh);
    return 1;

 err:
    FUNC0(public_key);
    FUNC2(dh);
    return 0;

}