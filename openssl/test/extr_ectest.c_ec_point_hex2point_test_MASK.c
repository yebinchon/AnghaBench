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
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  const EC_GROUP ;
typedef  int /*<<< orphan*/  const BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC4 (int) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  POINT_CONVERSION_COMPRESSED ; 
 int /*<<< orphan*/  POINT_CONVERSION_HYBRID ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* curves ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC10(int id)
{
    int ret = 0, nid;
    EC_GROUP *group = NULL;
    const EC_POINT *G = NULL;
    EC_POINT *P = NULL;
    BN_CTX * bnctx = NULL;

    /* Do some setup */
    nid = curves[id].nid;
    if (!FUNC7(bnctx = FUNC1())
            || !FUNC7(group = FUNC4(nid))
            || !FUNC7(G = FUNC3(group))
            || !FUNC7(P = FUNC5(G, group)))
        goto err;

    if (!FUNC8(FUNC9(group, P,
                                                  POINT_CONVERSION_COMPRESSED,
                                                  bnctx))
            || !FUNC8(FUNC9(group, NULL,
                                                         POINT_CONVERSION_COMPRESSED,
                                                         bnctx))
            || !FUNC8(FUNC9(group, P,
                                                         POINT_CONVERSION_UNCOMPRESSED,
                                                         bnctx))
            || !FUNC8(FUNC9(group, NULL,
                                                         POINT_CONVERSION_UNCOMPRESSED,
                                                         bnctx))
            || !FUNC8(FUNC9(group, P,
                                                         POINT_CONVERSION_HYBRID,
                                                         bnctx))
            || !FUNC8(FUNC9(group, NULL,
                                                         POINT_CONVERSION_HYBRID,
                                                         bnctx)))
        goto err;

    ret = 1;

 err:
    FUNC6(P);
    FUNC2(group);
    FUNC0(bnctx);

    return ret;
}