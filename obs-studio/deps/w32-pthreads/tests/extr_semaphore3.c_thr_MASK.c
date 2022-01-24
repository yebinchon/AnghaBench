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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  s ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void *
FUNC4 (void * arg)
{
  FUNC0(FUNC3(&s) == 0);
  FUNC0(FUNC1(FUNC2()) == 0);
  return NULL;
}