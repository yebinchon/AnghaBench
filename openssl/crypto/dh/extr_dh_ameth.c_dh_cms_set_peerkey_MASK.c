#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_16__ {int /*<<< orphan*/ * pub_key; } ;
struct TYPE_13__ {int /*<<< orphan*/  dh; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_14__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ DH ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_CMS_SET_PEERKEY ; 
 int /*<<< orphan*/  DH_R_BN_DECODE_ERROR ; 
 int /*<<< orphan*/  DH_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_DHX ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_3__* FUNC11 () ; 
 scalar_t__ NID_dhpublicnumber ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 int V_ASN1_NULL ; 
 int V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const**,int*,void const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC15(EVP_PKEY_CTX *pctx,
                              X509_ALGOR *alg, ASN1_BIT_STRING *pubkey)
{
    const ASN1_OBJECT *aoid;
    int atype;
    const void *aval;
    ASN1_INTEGER *public_key = NULL;
    int rv = 0;
    EVP_PKEY *pkpeer = NULL, *pk = NULL;
    DH *dhpeer = NULL;
    const unsigned char *p;
    int plen;

    FUNC13(&aoid, &atype, &aval, alg);
    if (FUNC12(aoid) != NID_dhpublicnumber)
        goto err;
    /* Only absent parameters allowed in RFC XXXX */
    if (atype != V_ASN1_UNDEF && atype == V_ASN1_NULL)
        goto err;

    pk = FUNC7(pctx);
    if (pk == NULL)
        goto err;
    if (pk->type != EVP_PKEY_DHX)
        goto err;
    /* Get parameters from parent key */
    dhpeer = FUNC6(pk->pkey.dh);
    /* We have parameters now set public key */
    plen = FUNC3(pubkey);
    p = FUNC2(pubkey);
    if (p == NULL || plen == 0)
        goto err;

    if ((public_key = FUNC14(NULL, &p, plen)) == NULL) {
        FUNC5(DH_F_DH_CMS_SET_PEERKEY, DH_R_DECODE_ERROR);
        goto err;
    }

    /* We have parameters now set public key */
    if ((dhpeer->pub_key = FUNC1(public_key, NULL)) == NULL) {
        FUNC5(DH_F_DH_CMS_SET_PEERKEY, DH_R_BN_DECODE_ERROR);
        goto err;
    }

    pkpeer = FUNC11();
    if (pkpeer == NULL)
        goto err;
    FUNC8(pkpeer, pk->ameth->pkey_id, dhpeer);
    dhpeer = NULL;
    if (FUNC9(pctx, pkpeer) > 0)
        rv = 1;
 err:
    FUNC0(public_key);
    FUNC10(pkpeer);
    FUNC4(dhpeer);
    return rv;
}