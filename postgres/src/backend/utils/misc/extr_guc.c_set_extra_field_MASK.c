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
struct config_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_generic*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void
FUNC2(struct config_generic *gconf, void **field, void *newval)
{
	void	   *oldval = *field;

	/* Do the assignment */
	*field = newval;

	/* Free old value if it's not NULL and isn't referenced anymore */
	if (oldval && !FUNC0(gconf, oldval))
		FUNC1(oldval);
}