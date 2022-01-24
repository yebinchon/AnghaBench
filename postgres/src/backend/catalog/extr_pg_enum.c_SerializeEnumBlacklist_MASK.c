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
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ enum_blacklist ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void *space, Size size)
{
	Oid		   *serialized = (Oid *) space;

	/*
	 * Make sure the hash table hasn't changed in size since the caller
	 * reserved the space.
	 */
	FUNC0(size == FUNC1());

	/* Write out all the values from the hash table, if there is one. */
	if (enum_blacklist)
	{
		HASH_SEQ_STATUS status;
		Oid		   *value;

		FUNC2(&status, enum_blacklist);
		while ((value = (Oid *) FUNC3(&status)))
			*serialized++ = *value;
	}

	/* Write out the terminator. */
	*serialized = InvalidOid;

	/*
	 * Make sure the amount of space we actually used matches what was
	 * estimated.
	 */
	FUNC0((char *) (serialized + 1) == ((char *) space) + size);
}