#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_10__ {int reseed_prop_counter; } ;
typedef  TYPE_1__ RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(void)
{
    RAND_DRBG *m = NULL, *i = NULL, *s = NULL;
    unsigned char buf1[51], buf2[sizeof(buf1)];
    int ret = 0, mreseed, ireseed, sreseed;

    /* Initialise a three long DRBG chain */
    if (!FUNC8(m = FUNC3(0, 0, NULL))
        || !FUNC9(FUNC10(m))
        || !FUNC9(FUNC2(m, NULL, 0))
        || !FUNC8(i = FUNC3(0, 0, m))
        || !FUNC9(FUNC2(i, NULL, 0))
        || !FUNC8(s = FUNC3(0, 0, i))
        || !FUNC9(FUNC2(s, NULL, 0)))
        goto err;

    /* During a normal reseed, only the slave DRBG should be reseed */
    mreseed = ++m->reseed_prop_counter;
    ireseed = ++i->reseed_prop_counter;
    sreseed = s->reseed_prop_counter;
    if (!FUNC9(FUNC4(s, NULL, 0, 0))
        || !FUNC5(m->reseed_prop_counter, mreseed)
        || !FUNC5(i->reseed_prop_counter, ireseed)
        || !FUNC6(s->reseed_prop_counter, sreseed))
        goto err;

    /*
     * When prediction resistance is requested, the request should be
     * propagated to the master, so that the entire DRBG chain reseeds.
     */
    sreseed = s->reseed_prop_counter;
    if (!FUNC9(FUNC4(s, NULL, 0, 1))
        || !FUNC6(m->reseed_prop_counter, mreseed)
        || !FUNC6(i->reseed_prop_counter, ireseed)
        || !FUNC6(s->reseed_prop_counter, sreseed))
        goto err;

    /* During a normal generate, only the slave DRBG should be reseed */
    mreseed = ++m->reseed_prop_counter;
    ireseed = ++i->reseed_prop_counter;
    sreseed = s->reseed_prop_counter;
    if (!FUNC9(FUNC1(s, buf1, sizeof(buf1), 0, NULL, 0))
        || !FUNC5(m->reseed_prop_counter, mreseed)
        || !FUNC5(i->reseed_prop_counter, ireseed)
        || !FUNC6(s->reseed_prop_counter, sreseed))
        goto err;

    /*
     * When a prediction resistant generate is requested, the request
     * should be propagated to the master, reseeding the entire DRBG chain.
     */
    sreseed = s->reseed_prop_counter;
    if (!FUNC9(FUNC1(s, buf2, sizeof(buf2), 1, NULL, 0))
        || !FUNC6(m->reseed_prop_counter, mreseed)
        || !FUNC6(i->reseed_prop_counter, ireseed)
        || !FUNC6(s->reseed_prop_counter, sreseed)
        || !FUNC7(buf1, sizeof(buf1), buf2, sizeof(buf2)))
        goto err;

    /* Verify that a normal reseed still only reseeds the slave DRBG */
    mreseed = ++m->reseed_prop_counter;
    ireseed = ++i->reseed_prop_counter;
    sreseed = s->reseed_prop_counter;
    if (!FUNC9(FUNC4(s, NULL, 0, 0))
        || !FUNC5(m->reseed_prop_counter, mreseed)
        || !FUNC5(i->reseed_prop_counter, ireseed)
        || !FUNC6(s->reseed_prop_counter, sreseed))
        goto err;

    ret = 1;
err:
    FUNC0(s);
    FUNC0(i);
    FUNC0(m);
    return ret;
}