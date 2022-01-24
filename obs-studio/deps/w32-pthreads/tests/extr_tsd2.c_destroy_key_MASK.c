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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int* thread_destroyed ; 

__attribute__((used)) static void
FUNC2(void * arg)
{
  int * j = (int *) arg;

  (*j)++;

  /* Set TSD key from the destructor to test destructor iteration */
  if (*j == 2)
    FUNC0(FUNC1(key, arg) == 0);
  else
    FUNC0(*j == 3);

  thread_destroyed[j - accesscount] = 1;
}