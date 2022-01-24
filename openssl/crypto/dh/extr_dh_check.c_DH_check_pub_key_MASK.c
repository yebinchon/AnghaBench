#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  p; int /*<<< orphan*/ * q; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int DH_CHECK_PUBKEY_INVALID ; 
 int DH_CHECK_PUBKEY_TOO_LARGE ; 
 int DH_CHECK_PUBKEY_TOO_SMALL ; 

int FUNC11(const DH *dh, const BIGNUM *pub_key, int *ret)
{
    int ok = 0;
    BIGNUM *tmp = NULL;
    BN_CTX *ctx = NULL;

    *ret = 0;
    ctx = FUNC3();
    if (ctx == NULL)
        goto err;
    FUNC4(ctx);
    tmp = FUNC2(ctx);
    if (tmp == NULL || !FUNC9(tmp, 1))
        goto err;
    if (FUNC5(pub_key, tmp) <= 0)
        *ret |= DH_CHECK_PUBKEY_TOO_SMALL;
    if (FUNC6(tmp, dh->p) == NULL || !FUNC10(tmp, 1))
        goto err;
    if (FUNC5(pub_key, tmp) >= 0)
        *ret |= DH_CHECK_PUBKEY_TOO_LARGE;

    if (dh->q != NULL) {
        /* Check pub_key^q == 1 mod p */
        if (!FUNC8(tmp, pub_key, dh->q, dh->p, ctx))
            goto err;
        if (!FUNC7(tmp))
            *ret |= DH_CHECK_PUBKEY_INVALID;
    }

    ok = 1;
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    return ok;
}