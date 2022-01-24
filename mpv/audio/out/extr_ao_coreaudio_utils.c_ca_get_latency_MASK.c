#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ denom; scalar_t__ numer; } ;
typedef  TYPE_1__ mach_timebase_info_data_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ mHostTime; } ;
typedef  TYPE_2__ AudioTimeStamp ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int64_t FUNC4(const AudioTimeStamp *ts)
{
#if HAVE_COREAUDIO
    uint64_t out = AudioConvertHostTimeToNanos(ts->mHostTime);
    uint64_t now = AudioConvertHostTimeToNanos(AudioGetCurrentHostTime());

    if (now > out)
        return 0;

    return (out - now) * 1e-3;
#else
    static mach_timebase_info_data_t timebase;
    if (timebase.denom == 0)
        FUNC3(&timebase);

    uint64_t out = ts->mHostTime;
    uint64_t now = FUNC2();

    if (now > out)
        return 0;

    return (out - now) * timebase.numer / timebase.denom / 1e3;
#endif
}