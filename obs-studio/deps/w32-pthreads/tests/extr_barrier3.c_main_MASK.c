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
typedef  int /*<<< orphan*/  pthread_barrierattr_t ;

/* Variables and functions */
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ result ; 

int
FUNC8()
{
  pthread_t t;
  pthread_barrierattr_t ba;

  FUNC0(FUNC4(&ba) == 0);
  FUNC0(FUNC5(&ba, PTHREAD_PROCESS_PRIVATE) == 0);
  FUNC0(FUNC2(&barrier, &ba, 1) == 0);

  FUNC0(FUNC6(&t, NULL, func, NULL) == 0);

  FUNC0(FUNC7(t, &result) == 0);

  FUNC0((int)(size_t)result == PTHREAD_BARRIER_SERIAL_THREAD);

  FUNC0(FUNC1(&barrier) == 0);
  FUNC0(FUNC3(&ba) == 0);

  return 0;
}