#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_10__ {int /*<<< orphan*/  pubkey; } ;
struct TYPE_7__ {TYPE_4__* ecx; } ;
struct TYPE_9__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_8__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ ECX_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECX_PUB_ENCODE ; 
 int /*<<< orphan*/  EC_R_INVALID_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    const ECX_KEY *ecxkey = pkey->pkey.ecx;
    unsigned char *penc;

    if (ecxkey == NULL) {
        FUNC0(EC_F_ECX_PUB_ENCODE, EC_R_INVALID_KEY);
        return 0;
    }

    penc = FUNC4(ecxkey->pubkey, FUNC1(pkey));
    if (penc == NULL) {
        FUNC0(EC_F_ECX_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!FUNC5(pk, FUNC2(pkey->ameth->pkey_id),
                                V_ASN1_UNDEF, NULL, penc, FUNC1(pkey))) {
        FUNC3(penc);
        FUNC0(EC_F_ECX_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}