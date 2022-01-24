#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  TYPE_1__* TupleHashTable ;
struct TYPE_9__ {int /*<<< orphan*/  firstTuple; int /*<<< orphan*/ * additional; } ;
typedef  TYPE_2__ TupleHashEntryData ;
typedef  TYPE_2__* TupleHashEntry ;
struct TYPE_8__ {int /*<<< orphan*/  hashtab; int /*<<< orphan*/  tablecxt; int /*<<< orphan*/  tab_eq_func; int /*<<< orphan*/  cur_eq_func; int /*<<< orphan*/  tab_hash_funcs; int /*<<< orphan*/  in_hash_funcs; int /*<<< orphan*/ * inputslot; int /*<<< orphan*/  tempcxt; } ;
typedef  int /*<<< orphan*/ * MinimalTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

TupleHashEntry
FUNC4(TupleHashTable hashtable, TupleTableSlot *slot,
					 bool *isnew)
{
	TupleHashEntryData *entry;
	MemoryContext oldContext;
	bool		found;
	MinimalTuple key;

	/* Need to run the hash functions in short-lived context */
	oldContext = FUNC1(hashtable->tempcxt);

	/* set up data needed by hash and match functions */
	hashtable->inputslot = slot;
	hashtable->in_hash_funcs = hashtable->tab_hash_funcs;
	hashtable->cur_eq_func = hashtable->tab_eq_func;

	key = NULL;					/* flag to reference inputslot */

	if (isnew)
	{
		entry = FUNC2(hashtable->hashtab, key, &found);

		if (found)
		{
			/* found pre-existing entry */
			*isnew = false;
		}
		else
		{
			/* created new entry */
			*isnew = true;
			/* zero caller data */
			entry->additional = NULL;
			FUNC1(hashtable->tablecxt);
			/* Copy the first tuple into the table context */
			entry->firstTuple = FUNC0(slot);
		}
	}
	else
	{
		entry = FUNC3(hashtable->hashtab, key);
	}

	FUNC1(oldContext);

	return entry;
}