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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float ITERATIONS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  currSysTimeStart ; 
 int /*<<< orphan*/  currSysTimeStop ; 
 scalar_t__ durationMilliSecs ; 
 int /*<<< orphan*/  ma ; 
 int /*<<< orphan*/  mx ; 
 scalar_t__ overHeadMilliSecs ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__,float) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  trylockThread ; 

void
FUNC10 (char * testNameString, int mType)
{
  pthread_t t;

#ifdef PTW32_MUTEX_TYPES
  (void) pthread_mutexattr_settype(&ma, mType);
#endif
  FUNC1(FUNC6(&mx, &ma) == 0);
  FUNC1(FUNC7(&mx) == 0);
  FUNC1(FUNC3(&t, NULL, trylockThread, 0) == 0);
  FUNC1(FUNC4(t, NULL) == 0);
  FUNC1(FUNC8(&mx) == 0);
  FUNC1(FUNC5(&mx) == 0);

  durationMilliSecs = FUNC0(currSysTimeStart, currSysTimeStop) - overHeadMilliSecs;

  FUNC2( "%-45s %15ld %15.3f\n",
	    testNameString,
          durationMilliSecs,
          (float) durationMilliSecs * 1E3 / ITERATIONS);
}