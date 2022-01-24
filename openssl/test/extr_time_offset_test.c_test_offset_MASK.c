#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* data; scalar_t__ flags; int /*<<< orphan*/  type; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int /*<<< orphan*/  time_result; int /*<<< orphan*/  type; scalar_t__ data; } ;
typedef  TYPE_1__ TESTDATA ;
typedef  TYPE_2__ ASN1_TIME ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* tests ; 
 int /*<<< orphan*/  the_asn1_time ; 
 int /*<<< orphan*/  the_time ; 

__attribute__((used)) static int FUNC6(int idx)
{
    ASN1_TIME at;
    const TESTDATA *testdata = &tests[idx];
    int ret = -2;
    int day, sec;

    at.data = (unsigned char*)testdata->data;
    at.length = FUNC5(testdata->data);
    at.type = testdata->type;
    at.flags = 0;

    if (!FUNC4(FUNC1(&day, &sec, &the_asn1_time, &at))) {
        FUNC2("ASN1_TIME_diff() failed for %s\n", at.data);
        return 0;
    }
    if (day > 0)
        ret = 1;
    else if (day < 0)
        ret = -1;
    else if (sec > 0)
        ret = 1;
    else if (sec < 0)
        ret = -1;
    else
        ret = 0;

    if (!FUNC3(testdata->time_result, ret)) {
        FUNC2("ASN1_TIME_diff() test failed for %s day=%d sec=%d\n", at.data, day, sec);
        return 0;
    }

    ret = FUNC0(&at, the_time);

    if (!FUNC3(testdata->time_result, ret)) {
        FUNC2("ASN1_UTCTIME_cmp_time_t() test failed for %s\n", at.data);
        return 0;
    }

    return 1;
}