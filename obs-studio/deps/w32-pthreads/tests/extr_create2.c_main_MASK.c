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
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int NUMTHREADS ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int washere ; 

int
FUNC5()
{
  pthread_t t;
  pthread_attr_t attr;
  void * result = NULL;
  int i;

  FUNC1(&attr);
  FUNC2(&attr, PTHREAD_CREATE_JOINABLE);

  for (i = 0; i < NUMTHREADS; i++)
    {
      washere = 0;
      FUNC0(FUNC3(&t, &attr, func, NULL) == 0);
      FUNC0(FUNC4(t, &result) == 0);
      FUNC0((int)(size_t)result == 0);
      FUNC0(washere == 1);
    }

  return 0;
}