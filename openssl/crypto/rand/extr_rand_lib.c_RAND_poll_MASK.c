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
struct TYPE_4__ {scalar_t__ (* add ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ;} ;
typedef  int /*<<< orphan*/  RAND_POOL ;
typedef  TYPE_1__ RAND_METHOD ;
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 int RAND_DRBG_STRENGTH ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__ const* FUNC1 () ; 
 int /*<<< orphan*/  RAND_POOL_MAX_LENGTH ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 double FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 

int FUNC13(void)
{
    int ret = 0;

    const RAND_METHOD *meth = FUNC2();

    if (meth == FUNC1()) {
        /* fill random pool and seed the master DRBG */
        RAND_DRBG *drbg = FUNC0();

        if (drbg == NULL)
            return 0;

        FUNC3(drbg);
        ret = FUNC4(drbg, NULL, 0, 0);
        FUNC5(drbg);

        return ret;

    } else {
        RAND_POOL *pool = NULL;

        /* fill random pool and seed the current legacy RNG */
        pool = FUNC11(RAND_DRBG_STRENGTH, 1,
                             (RAND_DRBG_STRENGTH + 7) / 8,
                             RAND_POOL_MAX_LENGTH);
        if (pool == NULL)
            return 0;

        if (FUNC6(pool) == 0)
            goto err;

        if (meth->add == NULL
            || meth->add(FUNC7(pool),
                         FUNC10(pool),
                         (FUNC8(pool) / 8.0)) == 0)
            goto err;

        ret = 1;

     err:
        FUNC9(pool);
    }

    return ret;
}