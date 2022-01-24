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
 int /*<<< orphan*/  ox1 ; 
 int /*<<< orphan*/  ox2 ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  FUNC2 () ; 

void *
FUNC3(void * arg)
{
  do
    {
      (void) FUNC0(&ox1);
      (void) FUNC0(&ox2);
      (void) FUNC1(&ox1);
      FUNC2();
      (void) FUNC1(&ox2);
    }
  while (running);

  return NULL;
}