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
typedef  int /*<<< orphan*/  p3 ;
typedef  int /*<<< orphan*/  p2 ;
typedef  int /*<<< orphan*/  p1 ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void)
{
    int ret = 0;
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *e = NULL;
    BIGNUM *bn_p1 = NULL, *bn_p2 = NULL, *bn_p3 = NULL;

    /* Some range checks that are larger than 32 bits */
    static const unsigned char p1[] = { 0x0B, 0x50, 0x4f, 0x33, 0x73 };
    static const unsigned char p2[] = { 0x0B, 0x50, 0x4f, 0x33, 0x75 };
    static const unsigned char p3[] = { 0x0F, 0x50, 0x00, 0x03, 0x75 };

    ret = FUNC6(p = FUNC3())
          && FUNC6(bn_p1 = FUNC8(p1, sizeof(p1)))
          && FUNC6(bn_p2 = FUNC8(p2, sizeof(p2)))
          && FUNC6(bn_p3 = FUNC8(p3, sizeof(p3)))
          && FUNC6(e = FUNC3())
          && FUNC6(ctx = FUNC1())
          /* Fails the prime test */
          && FUNC7(FUNC4(e, 0x1))
          && FUNC5(FUNC9(bn_p1, e, 72, ctx))
          /* p is prime and in range and gcd(p-1, e) = 1 */
          && FUNC7(FUNC9(bn_p2, e, 72, ctx))
          /* gcd(p-1,e) = 1 test fails */
          && FUNC7(FUNC4(e, 0x2))
          && FUNC5(FUNC9(p, e, 72, ctx))
          /* p fails the range check */
          && FUNC7(FUNC4(e, 0x1))
          && FUNC5(FUNC9(bn_p3, e, 72, ctx));

    FUNC2(bn_p3);
    FUNC2(bn_p2);
    FUNC2(bn_p1);
    FUNC2(e);
    FUNC2(p);
    FUNC0(ctx);
    return ret;
}