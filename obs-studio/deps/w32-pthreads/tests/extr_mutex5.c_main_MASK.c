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
 scalar_t__ FUNC0 (int) ; 
 int PTHREAD_MUTEX_DEFAULT ; 
 int PTHREAD_MUTEX_ERRORCHECK ; 
 scalar_t__ PTHREAD_MUTEX_ERRORCHECK_NP ; 
 scalar_t__ PTHREAD_MUTEX_FAST_NP ; 
 int PTHREAD_MUTEX_NORMAL ; 
 int PTHREAD_MUTEX_RECURSIVE ; 
 scalar_t__ PTHREAD_MUTEX_RECURSIVE_NP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mxAttr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4()
{
  int mxType = -1;

  FUNC1(FUNC0(PTHREAD_MUTEX_DEFAULT) == PTHREAD_MUTEX_NORMAL);
  FUNC1(FUNC0(PTHREAD_MUTEX_DEFAULT) != PTHREAD_MUTEX_ERRORCHECK);
  FUNC1(FUNC0(PTHREAD_MUTEX_DEFAULT) != PTHREAD_MUTEX_RECURSIVE);
  FUNC1(FUNC0(PTHREAD_MUTEX_RECURSIVE) != PTHREAD_MUTEX_ERRORCHECK);

  FUNC1(FUNC0(PTHREAD_MUTEX_NORMAL) == PTHREAD_MUTEX_FAST_NP);
  FUNC1(FUNC0(PTHREAD_MUTEX_RECURSIVE) == PTHREAD_MUTEX_RECURSIVE_NP);
  FUNC1(FUNC0(PTHREAD_MUTEX_ERRORCHECK) == PTHREAD_MUTEX_ERRORCHECK_NP);

  FUNC1(FUNC3(&mxAttr) == 0);
  FUNC1(FUNC2(&mxAttr, &mxType) == 0);
  FUNC1(mxType == PTHREAD_MUTEX_NORMAL);

  return 0;
}