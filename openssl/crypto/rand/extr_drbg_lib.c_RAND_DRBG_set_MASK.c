#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; unsigned int flags; int /*<<< orphan*/  state; TYPE_1__* meth; int /*<<< orphan*/ * adin_pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* uninstantiate ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/  DRBG_ERROR ; 
 int /*<<< orphan*/  DRBG_UNINITIALISED ; 
 unsigned int RAND_DRBG_FLAG_HMAC ; 
 size_t RAND_DRBG_TYPE_MASTER ; 
 int /*<<< orphan*/  RAND_F_RAND_DRBG_SET ; 
 int /*<<< orphan*/  RAND_R_ERROR_INITIALISING_DRBG ; 
 int /*<<< orphan*/  RAND_R_UNSUPPORTED_DRBG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 unsigned int* rand_drbg_flags ; 
 int* rand_drbg_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

int FUNC8(RAND_DRBG *drbg, int type, unsigned int flags)
{
    int ret = 1;

    if (type == 0 && flags == 0) {
        type = rand_drbg_type[RAND_DRBG_TYPE_MASTER];
        flags = rand_drbg_flags[RAND_DRBG_TYPE_MASTER];
    }

    /* If set is called multiple times - clear the old one */
    if (drbg->type != 0 && (type != drbg->type || flags != drbg->flags)) {
        drbg->meth->uninstantiate(drbg);
        FUNC6(drbg->adin_pool);
        drbg->adin_pool = NULL;
    }

    drbg->state = DRBG_UNINITIALISED;
    drbg->flags = flags;
    drbg->type = type;

    if (type == 0) {
        /* Uninitialized; that's okay. */
        drbg->meth = NULL;
        return 1;
    } else if (FUNC4(type)) {
        ret = FUNC1(drbg);
    } else if (FUNC5(type)) {
        if (flags & RAND_DRBG_FLAG_HMAC)
            ret = FUNC3(drbg);
        else
            ret = FUNC2(drbg);
    } else {
        drbg->type = 0;
        drbg->flags = 0;
        drbg->meth = NULL;
        FUNC0(RAND_F_RAND_DRBG_SET, RAND_R_UNSUPPORTED_DRBG_TYPE);
        return 0;
    }

    if (ret == 0) {
        drbg->state = DRBG_ERROR;
        FUNC0(RAND_F_RAND_DRBG_SET, RAND_R_ERROR_INITIALISING_DRBG);
    }
    return ret;
}