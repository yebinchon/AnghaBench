#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int secure; scalar_t__ strength; int /*<<< orphan*/  reseed_time_interval; int /*<<< orphan*/  reseed_interval; void* cleanup_entropy; void* get_entropy; int /*<<< orphan*/  cleanup_nonce; int /*<<< orphan*/  get_nonce; struct TYPE_11__* parent; int /*<<< orphan*/  fork_id; int /*<<< orphan*/ * libctx; } ;
typedef  TYPE_1__ RAND_DRBG ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,unsigned int) ; 
 int /*<<< orphan*/  RAND_F_RAND_DRBG_NEW ; 
 int /*<<< orphan*/  RAND_R_PARENT_STRENGTH_TOO_WEAK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_reseed_interval ; 
 int /*<<< orphan*/  master_reseed_time_interval ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* rand_crngt_cleanup_entropy ; 
 void* rand_crngt_get_entropy ; 
 void* rand_drbg_cleanup_entropy ; 
 int /*<<< orphan*/  rand_drbg_cleanup_nonce ; 
 void* rand_drbg_get_entropy ; 
 int /*<<< orphan*/  rand_drbg_get_nonce ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  slave_reseed_interval ; 
 int /*<<< orphan*/  slave_reseed_time_interval ; 

__attribute__((used)) static RAND_DRBG *FUNC9(OPENSSL_CTX *ctx,
                                int secure,
                                int type,
                                unsigned int flags,
                                RAND_DRBG *parent)
{
    RAND_DRBG *drbg = secure ? FUNC1(sizeof(*drbg))
                             : FUNC2(sizeof(*drbg));

    if (drbg == NULL) {
        FUNC5(RAND_F_RAND_DRBG_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    drbg->libctx = ctx;
    drbg->secure = secure && FUNC0(drbg);
    drbg->fork_id = FUNC6();
    drbg->parent = parent;

    if (parent == NULL) {
#ifdef FIPS_MODE
        drbg->get_entropy = rand_crngt_get_entropy;
        drbg->cleanup_entropy = rand_crngt_cleanup_entropy;
#else
        drbg->get_entropy = rand_drbg_get_entropy;
        drbg->cleanup_entropy = rand_drbg_cleanup_entropy;
#endif
#ifndef RAND_DRBG_GET_RANDOM_NONCE
        drbg->get_nonce = rand_drbg_get_nonce;
        drbg->cleanup_nonce = rand_drbg_cleanup_nonce;
#endif

        drbg->reseed_interval = master_reseed_interval;
        drbg->reseed_time_interval = master_reseed_time_interval;
    } else {
        drbg->get_entropy = rand_drbg_get_entropy;
        drbg->cleanup_entropy = rand_drbg_cleanup_entropy;
        /*
         * Do not provide nonce callbacks, the child DRBGs will
         * obtain their nonce using random bits from the parent.
         */

        drbg->reseed_interval = slave_reseed_interval;
        drbg->reseed_time_interval = slave_reseed_time_interval;
    }

    if (FUNC4(drbg, type, flags) == 0)
        goto err;

    if (parent != NULL) {
        FUNC7(parent);
        if (drbg->strength > parent->strength) {
            /*
             * We currently don't support the algorithm from NIST SP 800-90C
             * 10.1.2 to use a weaker DRBG as source
             */
            FUNC8(parent);
            FUNC5(RAND_F_RAND_DRBG_NEW, RAND_R_PARENT_STRENGTH_TOO_WEAK);
            goto err;
        }
        FUNC8(parent);
    }

    return drbg;

 err:
    FUNC3(drbg);

    return NULL;
}