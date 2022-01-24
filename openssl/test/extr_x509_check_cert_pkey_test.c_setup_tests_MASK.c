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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  e ; 
 int /*<<< orphan*/  k ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  test_x509_check_cert_pkey ; 

int FUNC3(void)
{
    if (!FUNC1(c = FUNC2(0))
            || !FUNC1(k = FUNC2(1))
            || !FUNC1(t = FUNC2(2))
            || !FUNC1(e = FUNC2(3))) {
        return 0;
    }

    FUNC0(test_x509_check_cert_pkey);
    return 1;
}