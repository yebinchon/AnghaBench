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
 int /*<<< orphan*/  NUM_TESTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOTAL_RECORDS ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  test_cookie ; 
 int /*<<< orphan*/  test_dtls_drop_records ; 
 int /*<<< orphan*/  test_dtls_duplicate_records ; 
 int /*<<< orphan*/  test_dtls_unprocessed ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(void)
{
    if (!FUNC2(cert = FUNC3(0))
            || !FUNC2(privkey = FUNC3(1)))
        return 0;

    FUNC0(test_dtls_unprocessed, NUM_TESTS);
    FUNC0(test_dtls_drop_records, TOTAL_RECORDS);
    FUNC1(test_cookie);
    FUNC1(test_dtls_duplicate_records);

    return 1;
}