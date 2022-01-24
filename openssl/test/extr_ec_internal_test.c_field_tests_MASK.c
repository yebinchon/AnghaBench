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
typedef  int /*<<< orphan*/  EC_METHOD ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(const EC_METHOD *meth, const unsigned char *params,
                       int len)
{
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *a = NULL, *b = NULL;
    EC_GROUP *group = NULL;
    int ret = 0;

    if (!FUNC9(ctx = FUNC3()))
        return 0;

    FUNC4(ctx);
    p = FUNC2(ctx);
    a = FUNC2(ctx);
    if (!FUNC9(b = FUNC2(ctx))
        || !FUNC9(group = FUNC7(meth))
        || !FUNC10(FUNC5(params, len, p))
        || !FUNC10(FUNC5(params + len, len, a))
        || !FUNC10(FUNC5(params + 2 * len, len, b))
        || !FUNC10(FUNC8(group, p, a, b, ctx))
        || !FUNC11(group, ctx))
        goto err;
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(ctx);
    if (group != NULL)
        FUNC6(group);
    return ret;
}