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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
    time_t now = FUNC4(NULL);
    /* Pick a day earlier and later, relative to any system clock. */
    ASN1_TIME *asn1_before = NULL, *asn1_after = NULL;
    int cmp_result, failed = 0;

    asn1_before = FUNC0(NULL, now, -1, 0);
    asn1_after = FUNC0(NULL, now, 1, 0);

    cmp_result  = FUNC3(asn1_before, NULL);
    if (!FUNC2(cmp_result, -1))
        failed = 1;

    cmp_result = FUNC3(asn1_after, NULL);
    if (!FUNC2(cmp_result, 1))
        failed = 1;

    FUNC1(asn1_before);
    FUNC1(asn1_after);

    return failed == 0;
}