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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enum_blacklist ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void *space)
{
	Oid		   *serialized = (Oid *) space;

	FUNC0(!enum_blacklist);

	/*
	 * As a special case, if the list is empty then don't even bother to
	 * create the hash table.  This is the usual case, since enum alteration
	 * is expected to be rare.
	 */
	if (!FUNC1(*serialized))
		return;

	/* Read all the values into a new hash table. */
	FUNC3();
	do
	{
		FUNC2(enum_blacklist, serialized++, HASH_ENTER, NULL);
	} while (FUNC1(*serialized));
}