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
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**) ; 

int
FUNC3(int argc, char * argv[])
{
  pthread_t id;
  void* result = (void*)0;

  /* Create a single thread and wait for it to exit. */
  FUNC0(FUNC1(&id, NULL, func, (void *) 123) == 0);

  FUNC0(FUNC2(id, &result) == 0);

  FUNC0((int)(size_t)result == 123);

  /* Success. */
  return 0;
}