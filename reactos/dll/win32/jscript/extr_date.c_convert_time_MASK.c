#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int wMonth; int wYear; int wDayOfWeek; int wDay; int wHour; int wMinute; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int DOUBLE ;

/* Variables and functions */
 int MS_PER_DAY ; 
 int MS_PER_HOUR ; 
 int MS_PER_MINUTE ; 
 int NAN ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static inline DOUBLE FUNC5(int year, SYSTEMTIME st)
{
    DOUBLE time;
    int set_week_day;

    if(st.wMonth == 0)
        return NAN;

    if(st.wYear != 0)
        year = st.wYear;

    time = FUNC3(year);
    time += (DOUBLE)FUNC0(st.wMonth-1, FUNC1(time)) * MS_PER_DAY;

    if(st.wYear == 0) {
        set_week_day = st.wDayOfWeek-FUNC4(time);
        if(set_week_day < 0)
            set_week_day += 7;
        time += set_week_day * MS_PER_DAY;

        time += (DOUBLE)(st.wDay-1) * 7 * MS_PER_DAY;
        if(FUNC2(time) != st.wMonth-1)
            time -= 7 * MS_PER_DAY;
    }
    else
        time += st.wDay * MS_PER_DAY;

    time += st.wHour * MS_PER_HOUR;
    time += st.wMinute * MS_PER_MINUTE;

    return time;
}