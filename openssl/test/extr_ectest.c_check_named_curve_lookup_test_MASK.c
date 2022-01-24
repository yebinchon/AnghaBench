#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nid; } ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  ECPARAMETERS ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC12(int id)
{
    int ret = 0, nid, rv = 0;
    EC_GROUP *g = NULL , *ga = NULL;
    ECPARAMETERS *p = NULL, *pa = NULL;
    BN_CTX *ctx = NULL;

    /* Do some setup */
    nid = curves[id].nid;
    if (!FUNC11(ctx = FUNC1())
        || !FUNC11(g = FUNC7(nid))
        || !FUNC11(p = FUNC6(g, NULL)))
        goto err;

    /* replace with group from explicit parameters */
    FUNC5(g);
    if (!FUNC11(g = FUNC8(p)))
        goto err;

    if (!FUNC10(rv = FUNC3(g, 0, NULL), 0))
        goto err;
    if (rv != nid) {
        /*
         * Found an alias:
         * fail if the returned nid is not an alias of the original group.
         *
         * The comparison here is done by comparing two explicit
         * parameter EC_GROUPs with EC_GROUP_cmp(), to ensure the
         * comparison happens with unnamed EC_GROUPs using the same
         * EC_METHODs.
         */
        if (!FUNC11(ga = FUNC7(rv))
                || !FUNC11(pa = FUNC6(ga, NULL)))
            goto err;

        /* replace with group from explicit parameters, then compare */
        FUNC5(ga);
        if (!FUNC11(ga = FUNC8(pa))
                || !FUNC9(FUNC4(g, ga, ctx), 0))
            goto err;
    }

    ret = 1;

 err:
    FUNC5(g);
    FUNC5(ga);
    FUNC2(p);
    FUNC2(pa);
    FUNC0(ctx);

    return ret;
}