#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  plpgsql_HashEnt ;
struct TYPE_3__ {int /*<<< orphan*/ * fn_hashkey; } ;
typedef  TYPE_1__ PLpgSQL_function ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  plpgsql_HashTable ; 

__attribute__((used)) static void
FUNC2(PLpgSQL_function *function)
{
	plpgsql_HashEnt *hentry;

	/* do nothing if not in table */
	if (function->fn_hashkey == NULL)
		return;

	hentry = (plpgsql_HashEnt *) FUNC1(plpgsql_HashTable,
											 (void *) function->fn_hashkey,
											 HASH_REMOVE,
											 NULL);
	if (hentry == NULL)
		FUNC0(WARNING, "trying to delete function that does not exist");

	/* remove back link, which no longer points to allocated storage */
	function->fn_hashkey = NULL;
}