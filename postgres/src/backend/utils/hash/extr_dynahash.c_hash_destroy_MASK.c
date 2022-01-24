#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ alloc; int /*<<< orphan*/ * hcxt; } ;
typedef  TYPE_1__ HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DynaHashAlloc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 

void
FUNC3(HTAB *hashp)
{
	if (hashp != NULL)
	{
		/* allocation method must be one we know how to free, too */
		FUNC0(hashp->alloc == DynaHashAlloc);
		/* so this hashtable must have its own context */
		FUNC0(hashp->hcxt != NULL);

		FUNC2("destroy", hashp);

		/*
		 * Free everything by destroying the hash table's memory context.
		 */
		FUNC1(hashp->hcxt);
	}
}