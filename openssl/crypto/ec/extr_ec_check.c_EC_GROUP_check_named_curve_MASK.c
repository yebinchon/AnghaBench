#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  EC_F_EC_GROUP_CHECK_NAMED_CURVE ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int NID_undef ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC5(const EC_GROUP *group, int nist_only,
                               BN_CTX *ctx)
{
    int nid = NID_undef;
#ifndef FIPS_MODE
    BN_CTX *new_ctx = NULL;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC1();
        if (ctx == NULL) {
            FUNC3(EC_F_EC_GROUP_CHECK_NAMED_CURVE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }
#endif

    nid = FUNC4(group, ctx);
    if (nid > 0 && nist_only && FUNC2(nid) == NULL)
        nid = NID_undef;

#ifndef FIPS_MODE
 err:
    FUNC0(ctx);
#endif
    return nid;
}