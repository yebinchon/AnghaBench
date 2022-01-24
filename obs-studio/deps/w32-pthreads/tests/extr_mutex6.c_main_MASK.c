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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int lockCount ; 
 int /*<<< orphan*/  locker ; 
 int /*<<< orphan*/  mutex ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6()
{
  pthread_t t;

  FUNC1(FUNC4(&mutex, NULL) == 0);

  FUNC1(FUNC3(&t, NULL, locker, NULL) == 0);

  FUNC0(1000);

  FUNC1(lockCount == 1);

  /*
   * Should succeed even though we don't own the lock
   * because FAST mutexes don't check ownership.
   */
  FUNC1(FUNC5(&mutex) == 0);

  FUNC0 (1000);

  FUNC1(lockCount == 2);

  FUNC2(0);

  /* Never reached */
  return 0;
}