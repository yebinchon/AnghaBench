#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  drbg ;
struct TYPE_18__ {scalar_t__ strength; TYPE_1__* seed_pool; TYPE_12__* parent; int /*<<< orphan*/  reseed_next_counter; int /*<<< orphan*/  secure; } ;
struct TYPE_17__ {int entropy_requested; } ;
struct TYPE_16__ {scalar_t__ strength; int /*<<< orphan*/  reseed_prop_counter; } ;
typedef  TYPE_1__ RAND_POOL ;
typedef  TYPE_2__ RAND_DRBG ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_12__*,unsigned char*,size_t,int,unsigned char*,int) ; 
 int /*<<< orphan*/  RAND_F_RAND_DRBG_GET_ENTROPY ; 
 int /*<<< orphan*/  RAND_R_PARENT_STRENGTH_TOO_WEAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 unsigned char* FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t,int) ; 
 size_t FUNC7 (TYPE_1__*,int) ; 
 unsigned char* FUNC8 (TYPE_1__*) ; 
 size_t FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 size_t FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

size_t FUNC14(RAND_DRBG *drbg,
                             unsigned char **pout,
                             int entropy, size_t min_len, size_t max_len,
                             int prediction_resistance)
{
    size_t ret = 0;
    size_t entropy_available = 0;
    RAND_POOL *pool;

    if (drbg->parent != NULL && drbg->strength > drbg->parent->strength) {
        /*
         * We currently don't support the algorithm from NIST SP 800-90C
         * 10.1.2 to use a weaker DRBG as source
         */
        FUNC1(RAND_F_RAND_DRBG_GET_ENTROPY, RAND_R_PARENT_STRENGTH_TOO_WEAK);
        return 0;
    }

    if (drbg->seed_pool != NULL) {
        pool = drbg->seed_pool;
        pool->entropy_requested = entropy;
    } else {
        pool = FUNC12(entropy, drbg->secure, min_len, max_len);
        if (pool == NULL)
            return 0;
    }

    if (drbg->parent != NULL) {
        size_t bytes_needed = FUNC7(pool, 1 /*entropy_factor*/);
        unsigned char *buffer = FUNC5(pool, bytes_needed);

        if (buffer != NULL) {
            size_t bytes = 0;

            /*
             * Get random data from parent. Include our address as additional input,
             * in order to provide some additional distinction between different
             * DRBG child instances.
             * Our lock is already held, but we need to lock our parent before
             * generating bits from it. (Note: taking the lock will be a no-op
             * if locking if drbg->parent->lock == NULL.)
             */
            FUNC2(drbg->parent);
            if (FUNC0(drbg->parent,
                                   buffer, bytes_needed,
                                   prediction_resistance,
                                   (unsigned char *)&drbg, sizeof(drbg)) != 0)
                bytes = bytes_needed;
            drbg->reseed_next_counter
                = FUNC13(&drbg->parent->reseed_prop_counter);
            FUNC3(drbg->parent);

            FUNC6(pool, bytes, 8 * bytes);
            entropy_available = FUNC9(pool);
        }

    } else {
        /* Get entropy by polling system entropy sources. */
        entropy_available = FUNC4(pool);
    }

    if (entropy_available > 0) {
        ret   = FUNC11(pool);
        *pout = FUNC8(pool);
    }

    if (drbg->seed_pool == NULL)
        FUNC10(pool);
    return ret;
}