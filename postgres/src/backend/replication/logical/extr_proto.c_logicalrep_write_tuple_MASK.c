#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_18__ {int attlen; int /*<<< orphan*/  atttypid; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_17__ {int /*<<< orphan*/  typoutput; } ;
struct TYPE_16__ {scalar_t__ t_len; } ;
struct TYPE_15__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_type ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int MaxTupleAttributeNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 TYPE_4__* FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17(StringInfo out, Relation rel, HeapTuple tuple)
{
	TupleDesc	desc;
	Datum		values[MaxTupleAttributeNumber];
	bool		isnull[MaxTupleAttributeNumber];
	int			i;
	uint16		nliveatts = 0;

	desc = FUNC4(rel);

	for (i = 0; i < desc->natts; i++)
	{
		if (FUNC7(desc, i)->attisdropped || FUNC7(desc, i)->attgenerated)
			continue;
		nliveatts++;
	}
	FUNC15(out, nliveatts);

	/* try to allocate enough memory from the get-go */
	FUNC10(out, tuple->t_len +
					  nliveatts * (1 + 4));

	FUNC11(tuple, desc, values, isnull);

	/* Write the values */
	for (i = 0; i < desc->natts; i++)
	{
		HeapTuple	typtup;
		Form_pg_type typclass;
		Form_pg_attribute att = FUNC7(desc, i);
		char	   *outputstr;

		if (att->attisdropped || att->attgenerated)
			continue;

		if (isnull[i])
		{
			FUNC13(out, 'n');	/* null column */
			continue;
		}
		else if (att->attlen == -1 && FUNC8(values[i]))
		{
			FUNC13(out, 'u');	/* unchanged toast column */
			continue;
		}

		typtup = FUNC6(TYPEOID, FUNC2(att->atttypid));
		if (!FUNC1(typtup))
			FUNC9(ERROR, "cache lookup failed for type %u", att->atttypid);
		typclass = (Form_pg_type) FUNC0(typtup);

		FUNC13(out, 't');	/* 'text' data follows */

		outputstr = FUNC3(typclass->typoutput, values[i]);
		FUNC14(out, outputstr, FUNC16(outputstr), false);
		FUNC12(outputstr);

		FUNC5(typtup);
	}
}