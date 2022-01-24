#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  priv_key; } ;
struct TYPE_14__ {scalar_t__ length; int /*<<< orphan*/  type; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_6__* dh; } ;
struct TYPE_13__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_12__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_PRIV_ENCODE ; 
 int /*<<< orphan*/  DH_R_BN_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,unsigned char*,int) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC9 (TYPE_3__ const*,TYPE_6__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    ASN1_STRING *params = NULL;
    ASN1_INTEGER *prkey = NULL;
    unsigned char *dp = NULL;
    int dplen;

    params = FUNC2();

    if (params == NULL) {
        FUNC4(DH_F_DH_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    params->length = FUNC9(pkey, pkey->pkey.dh, &params->data);
    if (params->length <= 0) {
        FUNC4(DH_F_DH_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    params->type = V_ASN1_SEQUENCE;

    /* Get private key into integer */
    prkey = FUNC3(pkey->pkey.dh->priv_key, NULL);

    if (prkey == NULL) {
        FUNC4(DH_F_DH_PRIV_ENCODE, DH_R_BN_ERROR);
        goto err;
    }

    dplen = FUNC8(prkey, &dp);

    FUNC0(prkey);
    prkey = NULL;

    if (!FUNC7(p8, FUNC5(pkey->ameth->pkey_id), 0,
                         V_ASN1_SEQUENCE, params, dp, dplen))
        goto err;

    return 1;

 err:
    FUNC6(dp);
    FUNC1(params);
    FUNC0(prkey);
    return 0;
}