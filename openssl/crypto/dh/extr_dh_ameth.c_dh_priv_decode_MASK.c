#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_15__ {unsigned char* data; int length; } ;
struct TYPE_14__ {int /*<<< orphan*/ * priv_key; } ;
struct TYPE_13__ {TYPE_1__* ameth; } ;
struct TYPE_12__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  TYPE_3__ DH ;
typedef  TYPE_4__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  DH_F_DH_PRIV_DECODE ; 
 int /*<<< orphan*/  DH_R_BN_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  EVP_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,void const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 TYPE_3__* FUNC10 (TYPE_2__*,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC11(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    const X509_ALGOR *palg;
    ASN1_INTEGER *privkey = NULL;
    DH *dh = NULL;

    if (!FUNC7(NULL, &p, &pklen, &palg, p8))
        return 0;

    FUNC8(NULL, &ptype, &pval, palg);

    if (ptype != V_ASN1_SEQUENCE)
        goto decerr;
    if ((privkey = FUNC9(NULL, &p, pklen)) == NULL)
        goto decerr;

    pstr = pval;
    pm = pstr->data;
    pmlen = pstr->length;
    if ((dh = FUNC10(pkey, &pm, pmlen)) == NULL)
        goto decerr;

    /* We have parameters now set private key */
    if ((dh->priv_key = FUNC2()) == NULL
        || !FUNC0(privkey, dh->priv_key)) {
        FUNC5(DH_F_DH_PRIV_DECODE, DH_R_BN_ERROR);
        goto dherr;
    }
    /* Calculate public key, increments dirty_cnt */
    if (!FUNC4(dh))
        goto dherr;

    FUNC6(pkey, pkey->ameth->pkey_id, dh);

    FUNC1(privkey);

    return 1;

 decerr:
    FUNC5(DH_F_DH_PRIV_DECODE, EVP_R_DECODE_ERROR);
 dherr:
    FUNC3(dh);
    FUNC1(privkey);
    return 0;
}