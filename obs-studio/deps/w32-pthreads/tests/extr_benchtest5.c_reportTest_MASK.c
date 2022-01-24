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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float ITERATIONS ; 
 int /*<<< orphan*/  currSysTimeStart ; 
 int /*<<< orphan*/  currSysTimeStop ; 
 scalar_t__ durationMilliSecs ; 
 scalar_t__ overHeadMilliSecs ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__,float) ; 

void
FUNC2 (char * testNameString)
{
  durationMilliSecs = FUNC0(currSysTimeStart, currSysTimeStop) - overHeadMilliSecs;

  FUNC1( "%-45s %15ld %15.3f\n",
	    testNameString,
          durationMilliSecs,
          (float) durationMilliSecs * 1E3 / ITERATIONS);
}