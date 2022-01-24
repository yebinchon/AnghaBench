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
 int /*<<< orphan*/  cert1 ; 
 int /*<<< orphan*/  cert2 ; 
 int /*<<< orphan*/  ciphers ; 
 int /*<<< orphan*/  privkey1 ; 
 int /*<<< orphan*/  privkey2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  test_tls13 ; 

int FUNC4(void)
{
    if (!FUNC2(cert1 = FUNC3(0))
            || !FUNC2(privkey1 = FUNC3(1))
            || !FUNC2(cert2 = FUNC3(2))
            || !FUNC2(privkey2 = FUNC3(3)))
        return 0;

    FUNC0(test_tls13, FUNC1(ciphers));
    return 1;
}