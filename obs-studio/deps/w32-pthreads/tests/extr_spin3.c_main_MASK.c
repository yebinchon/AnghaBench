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
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spin ; 
 int /*<<< orphan*/  unlocker ; 
 int wasHere ; 

int
FUNC7()
{
  pthread_t t;

  wasHere = 0;
  FUNC0(FUNC4(&spin, PTHREAD_PROCESS_PRIVATE) == 0);
  FUNC0(FUNC5(&spin) == 0);
  FUNC0(FUNC1(&t, NULL, unlocker, (void*)0) == 0);
  FUNC0(FUNC2(t, NULL) == 0);
  /*
   * Our spinlocks don't record the owner thread so any thread can unlock the spinlock,
   * but nor is it an error for any thread to unlock a spinlock that is not locked.
   */
  FUNC0(FUNC6(&spin) == 0);
  FUNC0(FUNC3(&spin) == 0);
  FUNC0(wasHere == 2);

  return 0;
}