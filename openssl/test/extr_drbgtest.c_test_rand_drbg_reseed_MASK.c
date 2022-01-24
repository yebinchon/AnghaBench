#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  rand_add_buf ;
struct TYPE_25__ {int fail; } ;
struct TYPE_24__ {int /*<<< orphan*/  reseed_prop_counter; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ RAND_DRBG ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_9__*) ; 
 TYPE_9__ master_ctx ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,char,int) ; 
 TYPE_9__ private_ctx ; 
 TYPE_9__ public_ctx ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC19(void)
{
    RAND_DRBG *master, *public, *private;
    unsigned char rand_add_buf[256];
    int rv=0;
    time_t before_reseed;

    /* Check whether RAND_OpenSSL() is the default method */
    if (!FUNC8(FUNC6(), FUNC4()))
        return 0;

    /* All three DRBGs should be non-null */
    if (!FUNC7(master = FUNC0())
        || !FUNC7(public = FUNC2())
        || !FUNC7(private = FUNC1()))
        return 0;

    /* There should be three distinct DRBGs, two of them chained to master */
    if (!FUNC9(public, private)
        || !FUNC9(public, master)
        || !FUNC9(private, master)
        || !FUNC8(public->parent, master)
        || !FUNC8(private->parent, master))
        return 0;

    /* Disable CRNG testing for the master DRBG */
    if (!FUNC10(FUNC11(master)))
        return 0;

    /* uninstantiate the three global DRBGs */
    FUNC3(private);
    FUNC3(public);
    FUNC3(master);


    /* Install hooks for the following tests */
    FUNC12(master,  &master_ctx);
    FUNC12(public,  &public_ctx);
    FUNC12(private, &private_ctx);


    /*
     * Test initial seeding of shared DRBGs
     */
    if (!FUNC10(FUNC15(1, master, public, private, 1, 1, 1, 0)))
        goto error;
    FUNC14();


    /*
     * Test initial state of shared DRBGs
     */
    if (!FUNC10(FUNC15(1, master, public, private, 0, 0, 0, 0)))
        goto error;
    FUNC14();

    /*
     * Test whether the public and private DRBG are both reseeded when their
     * reseed counters differ from the master's reseed counter.
     */
    master->reseed_prop_counter++;
    if (!FUNC10(FUNC15(1, master, public, private, 0, 1, 1, 0)))
        goto error;
    FUNC14();

    /*
     * Test whether the public DRBG is reseeded when its reseed counter differs
     * from the master's reseed counter.
     */
    master->reseed_prop_counter++;
    private->reseed_prop_counter++;
    if (!FUNC10(FUNC15(1, master, public, private, 0, 1, 0, 0)))
        goto error;
    FUNC14();

    /*
     * Test whether the private DRBG is reseeded when its reseed counter differs
     * from the master's reseed counter.
     */
    master->reseed_prop_counter++;
    public->reseed_prop_counter++;
    if (!FUNC10(FUNC15(1, master, public, private, 0, 0, 1, 0)))
        goto error;
    FUNC14();

#if defined(OPENSSL_SYS_UNIX)
    if (!TEST_true(test_drbg_reseed_after_fork(master, public, private)))
        goto error;
#endif

    /* fill 'randomness' buffer with some arbitrary data */
    FUNC13(rand_add_buf, 'r', sizeof(rand_add_buf));

#ifndef FIPS_MODE
    /*
     * Test whether all three DRBGs are reseeded by RAND_add().
     * The before_reseed time has to be measured here and passed into the
     * test_drbg_reseed() test, because the master DRBG gets already reseeded
     * in RAND_add(), whence the check for the condition
     * before_reseed <= master->reseed_time will fail if the time value happens
     * to increase between the RAND_add() and the test_drbg_reseed() call.
     */
    before_reseed = FUNC17(NULL);
    FUNC5(rand_add_buf, sizeof(rand_add_buf), sizeof(rand_add_buf));
    if (!FUNC10(FUNC15(1, master, public, private, 1, 1, 1,
                                    before_reseed)))
        goto error;
    FUNC14();


    /*
     * Test whether none of the DRBGs is reseed if the master fails to reseed
     */
    master_ctx.fail = 1;
    master->reseed_prop_counter++;
    FUNC5(rand_add_buf, sizeof(rand_add_buf), sizeof(rand_add_buf));
    if (!FUNC10(FUNC15(0, master, public, private, 0, 0, 0, 0)))
        goto error;
    FUNC14();
#else /* FIPS_MODE */
    /*
     * In FIPS mode, random data provided by the application via RAND_add()
     * is not considered a trusted entropy source. It is only treated as
     * additional_data and no reseeding is forced. This test assures that
     * no reseeding occurs.
     */
    before_reseed = time(NULL);
    RAND_add(rand_add_buf, sizeof(rand_add_buf), sizeof(rand_add_buf));
    if (!TEST_true(test_drbg_reseed(1, master, public, private, 0, 0, 0,
                                    before_reseed)))
        goto error;
    reset_drbg_hook_ctx();
#endif

    rv = 1;

error:
    /* Remove hooks  */
    FUNC18(master);
    FUNC18(public);
    FUNC18(private);

    return rv;
}