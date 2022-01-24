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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ bankAccount ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  rdfunc ; 
 int /*<<< orphan*/  wrfunc ; 

int
FUNC4()
{
  pthread_t wrt1;
  pthread_t wrt2;
  pthread_t rdt1;
  pthread_t rdt2;
  void* wr1Result = (void*)0;
  void* wr2Result = (void*)0;
  void* rd1Result = (void*)0;
  void* rd2Result = (void*)0;

  bankAccount = 0;

  FUNC1(FUNC2(&wrt1, NULL, wrfunc, NULL) == 0);
  FUNC0(500);
  FUNC1(FUNC2(&rdt1, NULL, rdfunc, (void *)(size_t)1) == 0);
  FUNC0(500);
  FUNC1(FUNC2(&wrt2, NULL, wrfunc, NULL) == 0);
  FUNC0(500);
  FUNC1(FUNC2(&rdt2, NULL, rdfunc, (void *)(size_t)2) == 0);

  FUNC1(FUNC3(wrt1, &wr1Result) == 0);
  FUNC1(FUNC3(rdt1, &rd1Result) == 0);
  FUNC1(FUNC3(wrt2, &wr2Result) == 0);
  FUNC1(FUNC3(rdt2, &rd2Result) == 0);

  FUNC1((int)(size_t)wr1Result == 10);
  FUNC1((int)(size_t)rd1Result == 0);
  FUNC1((int)(size_t)wr2Result == 20);
  FUNC1((int)(size_t)rd2Result == 20);

  return 0;
}