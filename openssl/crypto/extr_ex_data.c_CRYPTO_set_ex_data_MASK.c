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
struct TYPE_3__ {int /*<<< orphan*/ * sk; } ;
typedef  TYPE_1__ CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_CRYPTO_SET_EX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void*) ; 

int FUNC5(CRYPTO_EX_DATA *ad, int idx, void *val)
{
    int i;

    if (ad->sk == NULL) {
        if ((ad->sk = FUNC1()) == NULL) {
            FUNC0(CRYPTO_F_CRYPTO_SET_EX_DATA, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    for (i = FUNC2(ad->sk); i <= idx; ++i) {
        if (!FUNC3(ad->sk, NULL)) {
            FUNC0(CRYPTO_F_CRYPTO_SET_EX_DATA, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    FUNC4(ad->sk, idx, val);
    return 1;
}