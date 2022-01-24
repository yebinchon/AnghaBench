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
typedef  scalar_t__ int32 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MAX_TIME_PRECISION ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,...) ; 

int32
FUNC3(bool istz, int32 typmod)
{
	if (typmod < 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("TIME(%d)%s precision must not be negative",
						typmod, (istz ? " WITH TIME ZONE" : ""))));
	if (typmod > MAX_TIME_PRECISION)
	{
		FUNC0(WARNING,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("TIME(%d)%s precision reduced to maximum allowed, %d",
						typmod, (istz ? " WITH TIME ZONE" : ""),
						MAX_TIME_PRECISION)));
		typmod = MAX_TIME_PRECISION;
	}

	return typmod;
}