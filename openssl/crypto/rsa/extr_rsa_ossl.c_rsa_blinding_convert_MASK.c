#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BN_BLINDING ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(BN_BLINDING *b, BIGNUM *f, BIGNUM *unblind,
                                BN_CTX *ctx)
{
    if (unblind == NULL) {
        /*
         * Local blinding: store the unblinding factor in BN_BLINDING.
         */
        return FUNC0(f, NULL, b, ctx);
    } else {
        /*
         * Shared blinding: store the unblinding factor outside BN_BLINDING.
         */
        int ret;

        FUNC1(b);
        ret = FUNC0(f, unblind, b, ctx);
        FUNC2(b);

        return ret;
    }
}