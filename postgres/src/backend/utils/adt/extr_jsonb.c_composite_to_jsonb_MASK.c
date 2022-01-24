#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_23__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_22__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_len; } ;
struct TYPE_21__ {int /*<<< orphan*/  parseState; void* res; } ;
struct TYPE_17__ {char* val; int /*<<< orphan*/  len; } ;
struct TYPE_18__ {TYPE_1__ string; } ;
struct TYPE_20__ {TYPE_2__ val; int /*<<< orphan*/  type; } ;
struct TYPE_19__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbTypeCategory ;
typedef  TYPE_5__ JsonbInState ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_6__ HeapTupleData ;
typedef  TYPE_7__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  JSONBTYPE_NULL ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_7__* FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  WJB_BEGIN_OBJECT ; 
 int /*<<< orphan*/  WJB_END_OBJECT ; 
 int /*<<< orphan*/  WJB_KEY ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  jbvString ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(Datum composite, JsonbInState *result)
{
	HeapTupleHeader td;
	Oid			tupType;
	int32		tupTypmod;
	TupleDesc	tupdesc;
	HeapTupleData tmptup,
			   *tuple;
	int			i;

	td = FUNC0(composite);

	/* Extract rowtype info and find a tupdesc */
	tupType = FUNC3(td);
	tupTypmod = FUNC2(td);
	tupdesc = FUNC10(tupType, tupTypmod);

	/* Build a temporary HeapTuple control structure */
	tmptup.t_len = FUNC1(td);
	tmptup.t_data = td;
	tuple = &tmptup;

	result->res = FUNC11(&result->parseState, WJB_BEGIN_OBJECT, NULL);

	for (i = 0; i < tupdesc->natts; i++)
	{
		Datum		val;
		bool		isnull;
		char	   *attname;
		JsonbTypeCategory tcategory;
		Oid			outfuncoid;
		JsonbValue	v;
		Form_pg_attribute att = FUNC6(tupdesc, i);

		if (att->attisdropped)
			continue;

		attname = FUNC4(att->attname);

		v.type = jbvString;
		/* don't need checkStringLen here - can't exceed maximum name length */
		v.val.string.len = FUNC12(attname);
		v.val.string.val = attname;

		result->res = FUNC11(&result->parseState, WJB_KEY, &v);

		val = FUNC8(tuple, i + 1, tupdesc, &isnull);

		if (isnull)
		{
			tcategory = JSONBTYPE_NULL;
			outfuncoid = InvalidOid;
		}
		else
			FUNC9(att->atttypid, &tcategory, &outfuncoid);

		FUNC7(val, isnull, result, tcategory, outfuncoid, false);
	}

	result->res = FUNC11(&result->parseState, WJB_END_OBJECT, NULL);
	FUNC5(tupdesc);
}