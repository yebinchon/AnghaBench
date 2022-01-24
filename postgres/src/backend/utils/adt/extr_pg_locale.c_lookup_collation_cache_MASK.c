#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_8__ {int flags_valid; int collate_is_c; int ctype_is_c; scalar_t__ locale; } ;
typedef  TYPE_1__ collation_cache_entry ;
struct TYPE_10__ {int /*<<< orphan*/  collctype; int /*<<< orphan*/  collcollate; } ;
struct TYPE_9__ {int keysize; int entrysize; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ HASHCTL ;
typedef  TYPE_3__* Form_pg_collation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COLLOID ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * collation_cache ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int,TYPE_2__*,int) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static collation_cache_entry *
FUNC13(Oid collation, bool set_flags)
{
	collation_cache_entry *cache_entry;
	bool		found;

	FUNC0(FUNC5(collation));
	FUNC0(collation != DEFAULT_COLLATION_OID);

	if (collation_cache == NULL)
	{
		/* First time through, initialize the hash table */
		HASHCTL		ctl;

		FUNC11(&ctl, 0, sizeof(ctl));
		ctl.keysize = sizeof(Oid);
		ctl.entrysize = sizeof(collation_cache_entry);
		collation_cache = FUNC9("Collation cache", 100, &ctl,
									  HASH_ELEM | HASH_BLOBS);
	}

	cache_entry = FUNC10(collation_cache, &collation, HASH_ENTER, &found);
	if (!found)
	{
		/*
		 * Make sure cache entry is marked invalid, in case we fail before
		 * setting things.
		 */
		cache_entry->flags_valid = false;
		cache_entry->locale = 0;
	}

	if (set_flags && !cache_entry->flags_valid)
	{
		/* Attempt to set the flags */
		HeapTuple	tp;
		Form_pg_collation collform;
		const char *collcollate;
		const char *collctype;

		tp = FUNC7(COLLOID, FUNC4(collation));
		if (!FUNC2(tp))
			FUNC8(ERROR, "cache lookup failed for collation %u", collation);
		collform = (Form_pg_collation) FUNC1(tp);

		collcollate = FUNC3(collform->collcollate);
		collctype = FUNC3(collform->collctype);

		cache_entry->collate_is_c = ((FUNC12(collcollate, "C") == 0) ||
									 (FUNC12(collcollate, "POSIX") == 0));
		cache_entry->ctype_is_c = ((FUNC12(collctype, "C") == 0) ||
								   (FUNC12(collctype, "POSIX") == 0));

		cache_entry->flags_valid = true;

		FUNC6(tp);
	}

	return cache_entry;
}