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
struct TYPE_3__ {scalar_t__ daylightBias; scalar_t__ standardBias; int /*<<< orphan*/  daylightDate; int /*<<< orphan*/  standardDate; } ;
typedef  TYPE_1__ DateInstance ;
typedef  scalar_t__ DOUBLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline DOUBLE FUNC3(DOUBLE time, DateInstance *date)
{
    int year = FUNC2(time);
    DOUBLE standardTime, daylightTime;

    if(FUNC1(time))
        return 0;

    standardTime = FUNC0(year, date->standardDate);
    daylightTime = FUNC0(year, date->daylightDate);

    if(FUNC1(standardTime) || FUNC1(daylightTime))
        return 0;
    else if(standardTime > daylightTime) {
        if(daylightTime <= time && time < standardTime)
            return date->daylightBias;

        return date->standardBias;
    }
    else {
        if(standardTime <= time && time < daylightTime)
            return date->standardBias;

        return date->daylightBias;
    }
}