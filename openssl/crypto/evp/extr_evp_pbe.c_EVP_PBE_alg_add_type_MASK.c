#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pbe_type; int pbe_nid; int cipher_nid; int md_nid; int /*<<< orphan*/ * keygen; } ;
typedef  int /*<<< orphan*/  EVP_PBE_KEYGEN ;
typedef  TYPE_1__ EVP_PBE_CTL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_PBE_ALG_ADD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * pbe_algs ; 
 int /*<<< orphan*/  pbe_cmp ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC5(int pbe_type, int pbe_nid, int cipher_nid,
                         int md_nid, EVP_PBE_KEYGEN *keygen)
{
    EVP_PBE_CTL *pbe_tmp;

    if (pbe_algs == NULL) {
        pbe_algs = FUNC3(pbe_cmp);
        if (pbe_algs == NULL)
            goto err;
    }

    if ((pbe_tmp = FUNC2(sizeof(*pbe_tmp))) == NULL)
        goto err;

    pbe_tmp->pbe_type = pbe_type;
    pbe_tmp->pbe_nid = pbe_nid;
    pbe_tmp->cipher_nid = cipher_nid;
    pbe_tmp->md_nid = md_nid;
    pbe_tmp->keygen = keygen;

    if (!FUNC4(pbe_algs, pbe_tmp)) {
        FUNC1(pbe_tmp);
        goto err;
    }
    return 1;

 err:
    FUNC0(EVP_F_EVP_PBE_ALG_ADD_TYPE, ERR_R_MALLOC_FAILURE);
    return 0;
}