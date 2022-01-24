#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_12__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_len; } ;
struct TYPE_10__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  JsonTypeCategory ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_2__ HeapTupleData ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  JSONTYPE_NULL ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__* FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(Datum composite, StringInfo result, bool use_line_feeds)
{
	HeapTupleHeader td;
	Oid			tupType;
	int32		tupTypmod;
	TupleDesc	tupdesc;
	HeapTupleData tmptup,
			   *tuple;
	int			i;
	bool		needsep = false;
	const char *sep;

	sep = use_line_feeds ? ",\n " : ",";

	td = FUNC0(composite);

	/* Extract rowtype info and find a tupdesc */
	tupType = FUNC3(td);
	tupTypmod = FUNC2(td);
	tupdesc = FUNC13(tupType, tupTypmod);

	/* Build a temporary HeapTuple control structure */
	tmptup.t_len = FUNC1(td);
	tmptup.t_data = td;
	tuple = &tmptup;

	FUNC7(result, '{');

	for (i = 0; i < tupdesc->natts; i++)
	{
		Datum		val;
		bool		isnull;
		char	   *attname;
		JsonTypeCategory tcategory;
		Oid			outfuncoid;
		Form_pg_attribute att = FUNC6(tupdesc, i);

		if (att->attisdropped)
			continue;

		if (needsep)
			FUNC8(result, sep);
		needsep = true;

		attname = FUNC4(att->attname);
		FUNC10(result, attname);
		FUNC7(result, ':');

		val = FUNC11(tuple, i + 1, tupdesc, &isnull);

		if (isnull)
		{
			tcategory = JSONTYPE_NULL;
			outfuncoid = InvalidOid;
		}
		else
			FUNC12(att->atttypid, &tcategory, &outfuncoid);

		FUNC9(val, isnull, result, tcategory, outfuncoid, false);
	}

	FUNC7(result, '}');
	FUNC5(tupdesc);
}