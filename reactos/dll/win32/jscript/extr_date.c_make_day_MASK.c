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
typedef  int DOUBLE ;

/* Variables and functions */
 int MS_PER_DAY ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static inline DOUBLE FUNC5(DOUBLE year, DOUBLE month, DOUBLE day)
{
    DOUBLE time;

    year += FUNC1(month/12);

    month = FUNC2(month, 12);
    if(month<0) month += 12;

    time = FUNC4(year);

    day += FUNC1(time / MS_PER_DAY);
    day += FUNC0(month, FUNC3(time));

    return day-1;
}