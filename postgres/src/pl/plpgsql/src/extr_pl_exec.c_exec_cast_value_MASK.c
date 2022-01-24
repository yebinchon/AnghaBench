#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cast_in_use; int /*<<< orphan*/  cast_exprstate; } ;
typedef  TYPE_1__ plpgsql_CastHashEntry ;
typedef  int int32 ;
struct TYPE_11__ {int caseValue_isNull; int /*<<< orphan*/  caseValue_datum; } ;
struct TYPE_10__ {TYPE_3__* eval_econtext; } ;
typedef  TYPE_2__ PLpgSQL_execstate ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ ExprContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static Datum
FUNC4(PLpgSQL_execstate *estate,
				Datum value, bool *isnull,
				Oid valtype, int32 valtypmod,
				Oid reqtype, int32 reqtypmod)
{
	/*
	 * If the type of the given value isn't what's requested, convert it.
	 */
	if (valtype != reqtype ||
		(valtypmod != reqtypmod && reqtypmod != -1))
	{
		plpgsql_CastHashEntry *cast_entry;

		cast_entry = FUNC2(estate,
										valtype, valtypmod,
										reqtype, reqtypmod);
		if (cast_entry)
		{
			ExprContext *econtext = estate->eval_econtext;
			MemoryContext oldcontext;

			oldcontext = FUNC1(FUNC3(estate));

			econtext->caseValue_datum = value;
			econtext->caseValue_isNull = *isnull;

			cast_entry->cast_in_use = true;

			value = FUNC0(cast_entry->cast_exprstate, econtext,
								 isnull);

			cast_entry->cast_in_use = false;

			FUNC1(oldcontext);
		}
	}

	return value;
}