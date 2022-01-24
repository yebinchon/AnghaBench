#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32 ;
struct TYPE_10__ {TYPE_2__* tupDesc; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_13__ {int /*<<< orphan*/  shared_typmod_table; int /*<<< orphan*/  area; int /*<<< orphan*/ * shared_typmod_registry; } ;
struct TYPE_12__ {int /*<<< orphan*/  shared_tupdesc; } ;
struct TYPE_11__ {size_t tdtypmod; int tdrefcount; } ;
typedef  TYPE_3__ SharedTypmodTableEntry ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_9__* CurrentSession ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RECORDOID ; 
 TYPE_2__** RecordCacheArray ; 
 size_t RecordCacheArrayLen ; 
 scalar_t__* RecordIdentifierArray ; 
 int /*<<< orphan*/  TYPECACHE_TUPDESC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 TYPE_1__* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ tupledesc_id_counter ; 

__attribute__((used)) static TupleDesc
FUNC10(Oid type_id, int32 typmod, bool noError)
{
	if (type_id != RECORDOID)
	{
		/*
		 * It's a named composite type, so use the regular typcache.
		 */
		TypeCacheEntry *typentry;

		typentry = FUNC9(type_id, TYPECACHE_TUPDESC);
		if (typentry->tupDesc == NULL && !noError)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC7("type %s is not composite",
							FUNC8(type_id))));
		return typentry->tupDesc;
	}
	else
	{
		/*
		 * It's a transient record type, so look in our record-type table.
		 */
		if (typmod >= 0)
		{
			/* It is already in our local cache? */
			if (typmod < RecordCacheArrayLen &&
				RecordCacheArray[typmod] != NULL)
				return RecordCacheArray[typmod];

			/* Are we attached to a shared record typmod registry? */
			if (CurrentSession->shared_typmod_registry != NULL)
			{
				SharedTypmodTableEntry *entry;

				/* Try to find it in the shared typmod index. */
				entry = FUNC2(CurrentSession->shared_typmod_table,
									&typmod, false);
				if (entry != NULL)
				{
					TupleDesc	tupdesc;

					tupdesc = (TupleDesc)
						FUNC1(CurrentSession->area,
										entry->shared_tupdesc);
					FUNC0(typmod == tupdesc->tdtypmod);

					/* We may need to extend the local RecordCacheArray. */
					FUNC4(typmod);

					/*
					 * Our local array can now point directly to the TupleDesc
					 * in shared memory, which is non-reference-counted.
					 */
					RecordCacheArray[typmod] = tupdesc;
					FUNC0(tupdesc->tdrefcount == -1);

					/*
					 * We don't share tupdesc identifiers across processes, so
					 * assign one locally.
					 */
					RecordIdentifierArray[typmod] = ++tupledesc_id_counter;

					FUNC3(CurrentSession->shared_typmod_table,
										entry);

					return RecordCacheArray[typmod];
				}
			}
		}

		if (!noError)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC7("record type has not been registered")));
		return NULL;
	}
}