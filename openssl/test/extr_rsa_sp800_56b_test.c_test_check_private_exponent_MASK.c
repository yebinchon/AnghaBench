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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void)
{
    int ret = 0;
    RSA *key = NULL;
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *q = NULL, *e = NULL, *d = NULL, *n = NULL;

    ret = FUNC10(key = FUNC6())
          && FUNC10(ctx = FUNC1())
          && FUNC10(p = FUNC3())
          && FUNC10(q = FUNC3())
          /* lcm(15-1,17-1) = 14*16 / 2 = 112 */
          && FUNC11(FUNC4(p, 15))
          && FUNC11(FUNC4(q, 17))
          && FUNC11(FUNC7(key, p, q));
    if (!ret) {
        FUNC2(p);
        FUNC2(q);
        goto end;
    }

    ret = FUNC10(e = FUNC3())
          && FUNC10(d = FUNC3())
          && FUNC10(n = FUNC3())
          && FUNC11(FUNC4(e, 5))
          && FUNC11(FUNC4(d, 157))
          && FUNC11(FUNC4(n, 15*17))
          && FUNC11(FUNC8(key, n, e, d));
    if (!ret) {
        FUNC2(e);
        FUNC2(d);
        FUNC2(n);
        goto end;
    }
    /* fails since d >= lcm(p-1, q-1) */
    ret = FUNC9(FUNC12(key, 8, ctx))
          && FUNC11(FUNC4(d, 45))
          /* d is correct size and 1 = e.d mod lcm(p-1, q-1) */
          && FUNC11(FUNC12(key, 8, ctx))
          /* d is too small compared to nbits */
          && FUNC9(FUNC12(key, 16, ctx))
          /* d is too small compared to nbits */
          && FUNC11(FUNC4(d, 16))
          && FUNC9(FUNC12(key, 8, ctx))
          /* fail if 1 != e.d mod lcm(p-1, q-1) */
          && FUNC11(FUNC4(d, 46))
          && FUNC9(FUNC12(key, 8, ctx));
end:
    FUNC5(key);
    FUNC0(ctx);
    return ret;
}