#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_16__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int /*<<< orphan*/  pub_key; } ;
struct TYPE_12__ {TYPE_4__* dh; } ;
struct TYPE_14__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_13__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ DH ;
typedef  TYPE_5__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_5__* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_PUB_ENCODE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int V_ASN1_SEQUENCE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_5__*,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC9 (TYPE_3__ const*,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    DH *dh;
    int ptype;
    unsigned char *penc = NULL;
    int penclen;
    ASN1_STRING *str;
    ASN1_INTEGER *pub_key = NULL;

    dh = pkey->pkey.dh;

    str = FUNC2();
    if (str == NULL) {
        FUNC4(DH_F_DH_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    str->length = FUNC9(pkey, dh, &str->data);
    if (str->length <= 0) {
        FUNC4(DH_F_DH_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    ptype = V_ASN1_SEQUENCE;

    pub_key = FUNC3(dh->pub_key, NULL);
    if (pub_key == NULL)
        goto err;

    penclen = FUNC8(pub_key, &penc);

    FUNC0(pub_key);

    if (penclen <= 0) {
        FUNC4(DH_F_DH_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC7(pk, FUNC5(pkey->ameth->pkey_id),
                               ptype, str, penc, penclen))
        return 1;

 err:
    FUNC6(penc);
    FUNC1(str);

    return 0;
}