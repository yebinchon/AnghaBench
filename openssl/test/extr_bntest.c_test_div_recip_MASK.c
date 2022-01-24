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
typedef  int /*<<< orphan*/  BN_RECP_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NUM0 ; 
 int NUM1 ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL, *d = NULL, *e = NULL;
    BN_RECP_CTX *recp = NULL;
    int st = 0, i;

    if (!FUNC15(a = FUNC11())
            || !FUNC15(b = FUNC11())
            || !FUNC15(c = FUNC11())
            || !FUNC15(d = FUNC11())
            || !FUNC15(e = FUNC11())
            || !FUNC15(recp = FUNC1()))
        goto err;

    for (i = 0; i < NUM0 + NUM1; i++) {
        if (i < NUM1) {
            if (!(FUNC16(FUNC5(a, 400, 0, 0))
                    && FUNC15(FUNC6(b, a))
                    && FUNC16(FUNC9(a, a, i))
                    && FUNC16(FUNC4(a, i))))
                goto err;
        } else {
            if (!(FUNC16(FUNC5(b, 50 + 3 * (i - NUM1), 0, 0))))
                goto err;
        }
        FUNC12(a, FUNC17());
        FUNC12(b, FUNC17());
        if (!(FUNC16(FUNC2(recp, b, ctx))
                && FUNC16(FUNC7(d, c, a, recp, ctx))
                && FUNC16(FUNC10(e, d, b, ctx))
                && FUNC16(FUNC3(d, e, c))
                && FUNC16(FUNC13(d, d, a))
                && FUNC14(d)))
            goto err;
    }
    st = 1;
 err:
    FUNC8(a);
    FUNC8(b);
    FUNC8(c);
    FUNC8(d);
    FUNC8(e);
    FUNC0(recp);
    return st;
}