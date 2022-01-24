#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * mt_blinding; int /*<<< orphan*/ * blinding; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BN_BLINDING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BN_BLINDING *FUNC4(RSA *rsa, int *local, BN_CTX *ctx)
{
    BN_BLINDING *ret;

    FUNC2(rsa->lock);

    if (rsa->blinding == NULL) {
        rsa->blinding = FUNC3(rsa, ctx);
    }

    ret = rsa->blinding;
    if (ret == NULL)
        goto err;

    if (FUNC0(ret)) {
        /* rsa->blinding is ours! */

        *local = 1;
    } else {
        /* resort to rsa->mt_blinding instead */

        /*
         * instructs rsa_blinding_convert(), rsa_blinding_invert() that the
         * BN_BLINDING is shared, meaning that accesses require locks, and
         * that the blinding factor must be stored outside the BN_BLINDING
         */
        *local = 0;

        if (rsa->mt_blinding == NULL) {
            rsa->mt_blinding = FUNC3(rsa, ctx);
        }
        ret = rsa->mt_blinding;
    }

 err:
    FUNC1(rsa->lock);
    return ret;
}