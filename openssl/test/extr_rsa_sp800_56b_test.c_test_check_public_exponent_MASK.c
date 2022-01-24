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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void)
{
    int ret = 0;
    BIGNUM *e = NULL;

    ret = FUNC7(e = FUNC2())
          /* e is too small */
          && FUNC8(FUNC3(e, 65535))
          && FUNC6(FUNC9(e))
          /* e is even will fail */
          && FUNC8(FUNC3(e, 65536))
          && FUNC6(FUNC9(e))
          /* e is ok */
          && FUNC8(FUNC3(e, 65537))
          && FUNC8(FUNC9(e))
          /* e = 2^256 is too big */
          && FUNC8(FUNC1(e, FUNC5(), 256))
          && FUNC6(FUNC9(e))
          /* e = 2^256-1 is odd and in range */
          && FUNC8(FUNC4(e, e, FUNC5()))
          && FUNC8(FUNC9(e));
    FUNC0(e);
    return ret;
}