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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cs1 ; 
 int /*<<< orphan*/  cs2 ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  FUNC2 () ; 

void *
FUNC3(void * arg)
{
  do
    {
      FUNC0(&cs1);
      FUNC0(&cs2);
      FUNC1(&cs1);
      FUNC2();
      FUNC1(&cs2);
    }
  while (running);

  return NULL;
}