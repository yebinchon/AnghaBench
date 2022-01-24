#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {scalar_t__ wMonth; } ;
struct TYPE_5__ {int Bias; int StandardBias; TYPE_1__ StandardDate; } ;
typedef  TYPE_2__ TIME_ZONE_INFORMATION ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct tm*,scalar_t__) ; 

time_t FUNC2(struct tm *tmbuff)
{
    time_t offset;
    TIME_ZONE_INFORMATION tzi;
    
    offset = 0;

    // Retrive timezone offset in seconds
	if (FUNC0(&tzi) != 0xFFFFFFFF)
	{
		offset += (tzi.Bias * 60);
		if (tzi.StandardDate.wMonth != 0)
        {
			offset += (tzi.StandardBias * 60);
        }
	}

    return FUNC1(tmbuff, offset);
}