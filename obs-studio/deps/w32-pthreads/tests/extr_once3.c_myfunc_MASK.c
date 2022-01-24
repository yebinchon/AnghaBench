#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ i; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ numOnce ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{
  FUNC0(&numOnce.cs);
  numOnce.i++;
  FUNC3(numOnce.i > 0);
  FUNC1(&numOnce.cs);
  /* Simulate slow once routine so that following threads pile up behind it */
  FUNC2(10);
  /* test for cancelation late so we're sure to have waiters. */
  FUNC4();
}