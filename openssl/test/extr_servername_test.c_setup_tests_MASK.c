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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  sni_test_fns ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  test_servername ; 

int FUNC4(void)
{
    if (!FUNC2(cert = FUNC3(0))
            || !FUNC2(privkey = FUNC3(1)))
        return 0;

    FUNC0(test_servername, FUNC1(sni_test_fns));
    return 1;
}