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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 scalar_t__ EOWNERDEAD ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_ROBUST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  inheritor ; 
 int lockCount ; 
 int /*<<< orphan*/ * mutex ; 
 int /*<<< orphan*/  owner ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC11()
{
  pthread_t to, ti;
  pthread_mutexattr_t ma;

  FUNC0(FUNC9(&ma) == 0);
  FUNC0(FUNC10(&ma, PTHREAD_MUTEX_ROBUST) == 0);

  lockCount = 0;
  FUNC0(FUNC5(&mutex[0], &ma) == 0);
  FUNC0(FUNC5(&mutex[1], &ma) == 0);
  FUNC0(FUNC5(&mutex[2], &ma) == 0);
  FUNC0(FUNC1(&to, NULL, owner, NULL) == 0);
  FUNC0(FUNC2(to, NULL) == 0);
  FUNC0(FUNC1(&ti, NULL, inheritor, NULL) == 0);
  FUNC0(FUNC2(ti, NULL) == 0);
  FUNC0(lockCount == 6);
  FUNC0(FUNC6(&mutex[0]) == EOWNERDEAD);
  FUNC0(FUNC3(&mutex[0]) == 0);
  FUNC0(FUNC7(&mutex[0]) == 0);
  FUNC0(FUNC4(&mutex[0]) == 0);
  FUNC0(FUNC6(&mutex[1]) == EOWNERDEAD);
  FUNC0(FUNC3(&mutex[1]) == 0);
  FUNC0(FUNC7(&mutex[1]) == 0);
  FUNC0(FUNC4(&mutex[1]) == 0);
  FUNC0(FUNC6(&mutex[2]) == EOWNERDEAD);
  FUNC0(FUNC3(&mutex[2]) == 0);
  FUNC0(FUNC7(&mutex[2]) == 0);
  FUNC0(FUNC4(&mutex[2]) == 0);

  FUNC0(FUNC8(&ma) == 0);

  return 0;
}