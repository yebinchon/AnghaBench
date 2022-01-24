#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_11__ {int reseed_count; } ;
struct TYPE_10__ {int reseed_count; } ;
struct TYPE_9__ {int reseed_count; } ;
struct TYPE_8__ {int reseed_prop_counter; int state; scalar_t__ reseed_time; } ;
typedef  TYPE_1__ RAND_DRBG ;

/* Variables and functions */
 int DRBG_ERROR ; 
 int DRBG_READY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 TYPE_7__ master_ctx ; 
 TYPE_6__ private_ctx ; 
 TYPE_5__ public_ctx ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(int expect_success,
                            RAND_DRBG *master,
                            RAND_DRBG *public,
                            RAND_DRBG *private,
                            int expect_master_reseed,
                            int expect_public_reseed,
                            int expect_private_reseed,
                            time_t reseed_time
                           )
{
    unsigned char buf[32];
    time_t before_reseed, after_reseed;
    int expected_state = (expect_success ? DRBG_READY : DRBG_ERROR);

    /*
     * step 1: check preconditions
     */

    /* Test whether seed propagation is enabled */
    if (!FUNC5(master->reseed_prop_counter, 0)
        || !FUNC5(public->reseed_prop_counter, 0)
        || !FUNC5(private->reseed_prop_counter, 0))
        return 0;

    /* Check whether the master DRBG's reseed counter is the largest one */
    if (!FUNC4(public->reseed_prop_counter, master->reseed_prop_counter)
        || !FUNC4(private->reseed_prop_counter, master->reseed_prop_counter))
        return 0;

    /*
     * step 2: generate random output
     */

    if (reseed_time == 0)
        reseed_time = FUNC8(NULL);

    /* Generate random output from the public and private DRBG */
    before_reseed = expect_master_reseed == 1 ? reseed_time : 0;
    if (!FUNC3(FUNC1(buf, sizeof(buf)), expect_success)
        || !FUNC3(FUNC2(buf, sizeof(buf)), expect_success))
        return 0;
    after_reseed = FUNC8(NULL);


    /*
     * step 3: check postconditions
     */

    /* Test whether reseeding succeeded as expected */
    if (!FUNC3(master->state, expected_state)
        || !FUNC3(public->state, expected_state)
        || !FUNC3(private->state, expected_state))
        return 0;

    if (expect_master_reseed >= 0) {
        /* Test whether master DRBG was reseeded as expected */
        if (!FUNC3(master_ctx.reseed_count, expect_master_reseed))
            return 0;
    }

    if (expect_public_reseed >= 0) {
        /* Test whether public DRBG was reseeded as expected */
        if (!FUNC3(public_ctx.reseed_count, expect_public_reseed))
            return 0;
    }

    if (expect_private_reseed >= 0) {
        /* Test whether public DRBG was reseeded as expected */
        if (!FUNC3(private_ctx.reseed_count, expect_private_reseed))
            return 0;
    }

    if (expect_success == 1) {
        /* Test whether all three reseed counters are synchronized */
        if (!FUNC3(public->reseed_prop_counter, master->reseed_prop_counter)
            || !FUNC3(private->reseed_prop_counter, master->reseed_prop_counter))
            return 0;

        /* Test whether reseed time of master DRBG is set correctly */
        if (!FUNC7(before_reseed, master->reseed_time)
            || !FUNC7(master->reseed_time, after_reseed))
            return 0;

        /* Test whether reseed times of child DRBGs are synchronized with master */
        if (!FUNC6(public->reseed_time, master->reseed_time)
            || !FUNC6(private->reseed_time, master->reseed_time))
            return 0;
    } else {
        FUNC0();
    }

    return 1;
}