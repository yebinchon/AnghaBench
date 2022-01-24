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
 scalar_t__ PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int lockCount ; 
 int /*<<< orphan*/  locker ; 
 scalar_t__ mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 

int
FUNC5()
{
  pthread_t t;
  void* result = (void*)0;

  FUNC0(mutex == PTHREAD_ERRORCHECK_MUTEX_INITIALIZER);

  FUNC0(FUNC2(&t, NULL, locker, NULL) == 0);

  FUNC0(FUNC3(t, &result) == 0);
  FUNC0((int)(size_t)result == 555);

  FUNC0(lockCount == 2);

  FUNC0(FUNC4(&mutex) == 0);

  FUNC1(0);

  /* Never reached */
  return 0;
}