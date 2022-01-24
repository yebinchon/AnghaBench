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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(void)
{
    int ret = 0;
    BIGNUM *tmp = NULL, *p = NULL, *q = NULL;

    ret = FUNC4(tmp = FUNC1())
          && FUNC4(p = FUNC1())
          && FUNC4(q = FUNC1())
          /* |1-(2+1)| > 2^1 */
          && FUNC5(FUNC2(p, 1))
          && FUNC5(FUNC2(q, 1+2))
          && FUNC3(FUNC6(tmp, p, q, 202))
          /* Check |p - q| > 2^(nbits/2 - 100) */
          && FUNC5(FUNC2(q, 1+3))
          && FUNC5(FUNC6(tmp, p, q, 202))
          && FUNC5(FUNC2(p, 1+3))
          && FUNC5(FUNC2(q, 1))
          && FUNC5(FUNC6(tmp, p, q, 202));
    FUNC0(p);
    FUNC0(q);
    FUNC0(tmp);
    return ret;
}