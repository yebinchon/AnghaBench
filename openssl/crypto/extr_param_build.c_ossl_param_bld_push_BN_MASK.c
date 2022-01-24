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
struct TYPE_3__ {int /*<<< orphan*/  const* bn; } ;
typedef  TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ BN_FLG_SECURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  CRYPTO_F_OSSL_PARAM_BLD_PUSH_BN ; 
 int /*<<< orphan*/  CRYPTO_R_ZERO_LENGTH_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_PARAM_UNSIGNED_INTEGER ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ ,int) ; 

int FUNC4(OSSL_PARAM_BLD *bld, const char *key,
                           const BIGNUM *bn)
{
    int sz = -1, secure = 0;
    OSSL_PARAM_BLD_DEF *pd;

    if (bn != NULL) {
        sz = FUNC1(bn);
        if (sz < 0) {
            FUNC2(CRYPTO_F_OSSL_PARAM_BLD_PUSH_BN,
                      CRYPTO_R_ZERO_LENGTH_NUMBER);
            return 0;
        }
        if (FUNC0(bn, BN_FLG_SECURE) == BN_FLG_SECURE)
            secure = 1;
    }
    pd = FUNC3(bld, key, sz, sz >= 0 ? sz : 0,
                    OSSL_PARAM_UNSIGNED_INTEGER, secure);
    if (pd == NULL)
        return 0;
    pd->bn = bn;
    return 1;
}