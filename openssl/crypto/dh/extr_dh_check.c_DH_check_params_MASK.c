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
struct TYPE_3__ {int /*<<< orphan*/  p; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int DH_CHECK_P_NOT_PRIME ; 
 scalar_t__ DH_MIN_MODULUS_BITS ; 
 int DH_MODULUS_TOO_LARGE ; 
 int DH_MODULUS_TOO_SMALL ; 
 int DH_NOT_SUITABLE_GENERATOR ; 
 scalar_t__ OPENSSL_DH_MAX_MODULUS_BITS ; 

int FUNC13(const DH *dh, int *ret)
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
    if (tmp == NULL)
        goto err;

    if (!FUNC8(dh->p))
        *ret |= DH_CHECK_P_NOT_PRIME;
    if (FUNC7(dh->g) || FUNC10(dh->g) || FUNC9(dh->g))
        *ret |= DH_NOT_SUITABLE_GENERATOR;
    if (FUNC6(tmp, dh->p) == NULL || !FUNC12(tmp, 1))
        goto err;
    if (FUNC5(dh->g, tmp) >= 0)
        *ret |= DH_NOT_SUITABLE_GENERATOR;
    if (FUNC11(dh->p) < DH_MIN_MODULUS_BITS)
        *ret |= DH_MODULUS_TOO_SMALL;
    if (FUNC11(dh->p) > OPENSSL_DH_MAX_MODULUS_BITS)
        *ret |= DH_MODULUS_TOO_LARGE;

    ok = 1;
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    return ok;
}