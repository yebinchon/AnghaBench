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
 int MAX_COUNT ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thr ; 

int
FUNC6()
{
	int value = 0;
	int i;
	pthread_t t[MAX_COUNT+1];

	FUNC0(FUNC4(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);
	FUNC0(FUNC3(&s, &value) == 0);
//	printf("Value = %d\n", value);	fflush(stdout);
	FUNC0(value == 0);

	for (i = 1; i <= MAX_COUNT; i++)
		{
			FUNC0(FUNC1(&t[i], NULL, thr, NULL) == 0);
			do {
			  FUNC2();
			  FUNC0(FUNC3(&s, &value) == 0);
			} while (value != -i);
//			printf("Value = %d\n", value); fflush(stdout);
			FUNC0(-value == i);
		}

	for (i = MAX_COUNT - 1; i >= 0; i--)
		{
			FUNC0(FUNC5(&s) == 0);
			FUNC0(FUNC3(&s, &value) == 0);
//			printf("Value = %d\n", value);	fflush(stdout);
			FUNC0(-value == i);
		}

  return 0;
}