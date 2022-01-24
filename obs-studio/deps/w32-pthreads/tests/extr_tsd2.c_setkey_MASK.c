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
 int* accesscount ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  key ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int* thread_set ; 

__attribute__((used)) static void
FUNC3(void * arg)
{
  int * j = (int *) arg;

  thread_set[j - accesscount] = 1;

  FUNC0(*j == 0);

  FUNC0(FUNC1(key) == NULL);

  FUNC0(FUNC2(key, arg) == 0);
  FUNC0(FUNC2(key, arg) == 0);
  FUNC0(FUNC2(key, arg) == 0);

  FUNC0(FUNC1(key) == arg);

  (*j)++;

  FUNC0(*j == 1);
}