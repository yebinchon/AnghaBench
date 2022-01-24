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
typedef  int /*<<< orphan*/  sem_t ;

/* Variables and functions */
 int MAX_COUNT ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5()
{
  sem_t s;
	int value = 0;
	int i;

  FUNC0(FUNC2(&s, PTHREAD_PROCESS_PRIVATE, MAX_COUNT) == 0);
	FUNC0(FUNC1(&s, &value) == 0);
	FUNC0(value == MAX_COUNT);
//	  printf("Value = %ld\n", value);

	for (i = MAX_COUNT - 1; i >= 0; i--)
		{
			FUNC0(FUNC4(&s) == 0);
			FUNC0(FUNC1(&s, &value) == 0);
//			  printf("Value = %ld\n", value);
			FUNC0(value == i);
		}

	for (i = 1; i <= MAX_COUNT; i++)
		{
			FUNC0(FUNC3(&s) == 0);
			FUNC0(FUNC1(&s, &value) == 0);
//			  printf("Value = %ld\n", value);
			FUNC0(value == i);
		}

  return 0;
}