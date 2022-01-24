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
typedef  scalar_t__ uint64 ;
typedef  size_t int32 ;
struct TYPE_3__ {scalar_t__ tupDesc_identifier; int /*<<< orphan*/ * tupDesc; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/ ** RecordCacheArray ; 
 size_t RecordCacheArrayLen ; 
 scalar_t__* RecordIdentifierArray ; 
 int /*<<< orphan*/  TYPECACHE_TUPDESC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ tupledesc_id_counter ; 

uint64
FUNC6(Oid type_id, int32 typmod)
{
	if (type_id != RECORDOID)
	{
		/*
		 * It's a named composite type, so use the regular typcache.
		 */
		TypeCacheEntry *typentry;

		typentry = FUNC5(type_id, TYPECACHE_TUPDESC);
		if (typentry->tupDesc == NULL)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC3("type %s is not composite",
							FUNC4(type_id))));
		FUNC0(typentry->tupDesc_identifier != 0);
		return typentry->tupDesc_identifier;
	}
	else
	{
		/*
		 * It's a transient record type, so look in our record-type table.
		 */
		if (typmod >= 0 && typmod < RecordCacheArrayLen &&
			RecordCacheArray[typmod] != NULL)
		{
			FUNC0(RecordIdentifierArray[typmod] != 0);
			return RecordIdentifierArray[typmod];
		}

		/* For anonymous or unrecognized record type, generate a new ID */
		return ++tupledesc_id_counter;
	}
}