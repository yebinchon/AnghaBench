#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tm {int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_yday; } ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_2__ {int /*<<< orphan*/  wd; int /*<<< orphan*/  yd; int /*<<< orphan*/  d; int /*<<< orphan*/  m; int /*<<< orphan*/  y; } ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* day_of_week_tests ; 

__attribute__((used)) static int FUNC8(int n)
{
    char d[16];
    ASN1_TIME *a = NULL;
    struct tm t;
    int r;

    FUNC4(d, sizeof(d), "%04d%02d%02d050505Z",
                 day_of_week_tests[n].y, day_of_week_tests[n].m,
                 day_of_week_tests[n].d);

    if (!FUNC6(a = FUNC1()))
        return 0;

    r = FUNC7(FUNC2(a, d))
        && FUNC7(FUNC3(a, &t))
        && FUNC5(t.tm_yday, day_of_week_tests[n].yd)
        && FUNC5(t.tm_wday, day_of_week_tests[n].wd);

    FUNC0(a);
    return r;
}