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
struct nl_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cache ; 
 int /*<<< orphan*/ * family ; 
 int /*<<< orphan*/ * handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (family)
		FUNC1((struct nl_object*)family);
	if (cache)
		FUNC0(cache);
	if (handle)
		FUNC2(handle);
	family = NULL;
	handle = NULL;
	cache = NULL;
}