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
typedef  scalar_t__ OSSL_PROPERTY_IDX ;
typedef  int /*<<< orphan*/  OSSL_METHOD_STORE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC7(void)
{
    OSSL_METHOD_STORE *store;
    int res = 0;
    OSSL_PROPERTY_IDX i, j;

    if (FUNC2(store = FUNC4(NULL))
        && FUNC0(FUNC5(NULL, "fnord", 0), 0)
        && FUNC1(FUNC5(NULL, "fnord", 1), 0)
        && FUNC1(FUNC5(NULL, "name", 1), 0)
        /* Property value checks */
        && FUNC0(FUNC6(NULL, "fnord", 0), 0)
        && FUNC1(i = FUNC6(NULL, "no", 0), 0)
        && FUNC1(j = FUNC6(NULL, "yes", 0), 0)
        && FUNC1(i, j)
        && FUNC0(FUNC6(NULL, "yes", 1), j)
        && FUNC0(FUNC6(NULL, "no", 1), i)
        && FUNC1(i = FUNC6(NULL, "illuminati", 1), 0)
        && FUNC0(j = FUNC6(NULL, "fnord", 1), i + 1)
        && FUNC0(FUNC6(NULL, "fnord", 1), j)
        /* Check name and values are distinct */
        && FUNC0(FUNC6(NULL, "cold", 0), 0)
        && FUNC1(FUNC5(NULL, "fnord", 0),
                       FUNC6(NULL, "fnord", 0)))
        res = 1;
    FUNC3(store);
    return res;
}