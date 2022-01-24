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
typedef  scalar_t__ time_t ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,struct tm*,struct tm*) ; 
 long SECS_PER_DAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static int FUNC7(long offset)
{
    struct tm tm1, tm2, o1;
    int off_day, off_sec;
    long toffset;
    time_t t1, t2;

    FUNC6(&t1);

    t2 = t1 + offset;
    FUNC0(&t2, &tm2);
    FUNC0(&t1, &tm1);
    o1 = tm1;
    FUNC1(&tm1, 0, offset);
    if (!FUNC3(tm1.tm_year, tm2.tm_year)
        || !FUNC3(tm1.tm_mon, tm2.tm_mon)
        || !FUNC3(tm1.tm_mday, tm2.tm_mday)
        || !FUNC3(tm1.tm_hour, tm2.tm_hour)
        || !FUNC3(tm1.tm_min, tm2.tm_min)
        || !FUNC3(tm1.tm_sec, tm2.tm_sec)
        || !FUNC5(FUNC2(&off_day, &off_sec, &o1, &tm1)))
        return 0;
    toffset = (long)off_day * SECS_PER_DAY + off_sec;
    if (!FUNC4(offset, toffset))
        return 0;
    return 1;
}