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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  privkey ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  test_ssl_corrupt ; 

int FUNC4(void)
{
    int n;

    if (!FUNC1(cert = FUNC3(0))
            || !FUNC1(privkey = FUNC3(1)))
        return 0;

    n = FUNC2();
    if (n > 0)
        FUNC0(test_ssl_corrupt, n);
    return 1;
}