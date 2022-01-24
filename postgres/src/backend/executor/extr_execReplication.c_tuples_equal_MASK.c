#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_12__ {TYPE_10__ eq_opr_finfo; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_13__ {scalar_t__* tts_isnull; int /*<<< orphan*/ * tts_values; TYPE_9__* tts_tupleDescriptor; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_15__ {int natts; } ;
struct TYPE_14__ {int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypid; } ;
typedef  TYPE_3__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPECACHE_EQ_OPR_FINFO ; 
 TYPE_3__* FUNC4 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC11(TupleTableSlot *slot1, TupleTableSlot *slot2)
{
	int			attrnum;

	FUNC0(slot1->tts_tupleDescriptor->natts ==
		   slot2->tts_tupleDescriptor->natts);

	FUNC10(slot1);
	FUNC10(slot2);

	/* Check equality of the attributes. */
	for (attrnum = 0; attrnum < slot1->tts_tupleDescriptor->natts; attrnum++)
	{
		Form_pg_attribute att;
		TypeCacheEntry *typentry;

		/*
		 * If one value is NULL and other is not, then they are certainly not
		 * equal
		 */
		if (slot1->tts_isnull[attrnum] != slot2->tts_isnull[attrnum])
			return false;

		/*
		 * If both are NULL, they can be considered equal.
		 */
		if (slot1->tts_isnull[attrnum] || slot2->tts_isnull[attrnum])
			continue;

		att = FUNC4(slot1->tts_tupleDescriptor, attrnum);

		typentry = FUNC9(att->atttypid, TYPECACHE_EQ_OPR_FINFO);
		if (!FUNC3(typentry->eq_opr_finfo.fn_oid))
			FUNC5(ERROR,
					(FUNC6(ERRCODE_UNDEFINED_FUNCTION),
					 FUNC7("could not identify an equality operator for type %s",
							FUNC8(att->atttypid))));

		if (!FUNC1(FUNC2(&typentry->eq_opr_finfo,
											att->attcollation,
											slot1->tts_values[attrnum],
											slot2->tts_values[attrnum])))
			return false;
	}

	return true;
}