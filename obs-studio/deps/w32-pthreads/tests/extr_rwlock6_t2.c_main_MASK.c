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
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_5__ {long tv_sec; int tv_nsec; } ;
struct TYPE_4__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ abstime ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ bankAccount ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  rdfunc ; 
 int /*<<< orphan*/  wrfunc ; 

int
FUNC5()
{
  pthread_t wrt1;
  pthread_t wrt2;
  pthread_t rdt;
  void* wr1Result = (void*)0;
  void* wr2Result = (void*)0;
  void* rdResult = (void*)0;
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 1;

  bankAccount = 0;

  FUNC2(FUNC3(&wrt1, NULL, wrfunc, (void *)(size_t)1) == 0);
  FUNC1(100);
  FUNC2(FUNC3(&rdt, NULL, rdfunc, NULL) == 0);
  FUNC1(100);
  FUNC2(FUNC3(&wrt2, NULL, wrfunc, (void *)(size_t)2) == 0);

  FUNC2(FUNC4(wrt1, &wr1Result) == 0);
  FUNC2(FUNC4(rdt, &rdResult) == 0);
  FUNC2(FUNC4(wrt2, &wr2Result) == 0);

  FUNC2((int)(size_t)wr1Result == 10);
  FUNC2((int)(size_t)rdResult == 0);
  FUNC2((int)(size_t)wr2Result == 100);

  return 0;
}