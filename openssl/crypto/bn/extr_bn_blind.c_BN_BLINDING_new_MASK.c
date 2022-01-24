#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int counter; int /*<<< orphan*/ * mod; int /*<<< orphan*/ * Ai; int /*<<< orphan*/ * A; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ BN_BLINDING ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  BN_F_BN_BLINDING_NEW ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 

BN_BLINDING *FUNC10(const BIGNUM *A, const BIGNUM *Ai, BIGNUM *mod)
{
    BN_BLINDING *ret = NULL;

    FUNC9(mod);

    if ((ret = FUNC8(sizeof(*ret))) == NULL) {
        FUNC5(BN_F_BN_BLINDING_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->lock = FUNC6();
    if (ret->lock == NULL) {
        FUNC5(BN_F_BN_BLINDING_NEW, ERR_R_MALLOC_FAILURE);
        FUNC7(ret);
        return NULL;
    }

    FUNC1(ret);

    if (A != NULL) {
        if ((ret->A = FUNC2(A)) == NULL)
            goto err;
    }

    if (Ai != NULL) {
        if ((ret->Ai = FUNC2(Ai)) == NULL)
            goto err;
    }

    /* save a copy of mod in the BN_BLINDING structure */
    if ((ret->mod = FUNC2(mod)) == NULL)
        goto err;

    if (FUNC3(mod, BN_FLG_CONSTTIME) != 0)
        FUNC4(ret->mod, BN_FLG_CONSTTIME);

    /*
     * Set the counter to the special value -1 to indicate that this is
     * never-used fresh blinding that does not need updating before first
     * use.
     */
    ret->counter = -1;

    return ret;

 err:
    FUNC0(ret);
    return NULL;
}