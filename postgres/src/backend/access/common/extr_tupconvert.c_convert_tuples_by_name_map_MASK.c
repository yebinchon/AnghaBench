#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attnum; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; int /*<<< orphan*/  tdtypeid; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

AttrNumber *
FUNC9(TupleDesc indesc,
						   TupleDesc outdesc)
{
	AttrNumber *attrMap;
	int			outnatts;
	int			innatts;
	int			i;
	int			nextindesc = -1;

	outnatts = outdesc->natts;
	innatts = indesc->natts;

	attrMap = (AttrNumber *) FUNC7(outnatts * sizeof(AttrNumber));
	for (i = 0; i < outnatts; i++)
	{
		Form_pg_attribute outatt = FUNC1(outdesc, i);
		char	   *attname;
		Oid			atttypid;
		int32		atttypmod;
		int			j;

		if (outatt->attisdropped)
			continue;			/* attrMap[i] is already 0 */
		attname = FUNC0(outatt->attname);
		atttypid = outatt->atttypid;
		atttypmod = outatt->atttypmod;

		/*
		 * Now search for an attribute with the same name in the indesc. It
		 * seems likely that a partitioned table will have the attributes in
		 * the same order as the partition, so the search below is optimized
		 * for that case.  It is possible that columns are dropped in one of
		 * the relations, but not the other, so we use the 'nextindesc'
		 * counter to track the starting point of the search.  If the inner
		 * loop encounters dropped columns then it will have to skip over
		 * them, but it should leave 'nextindesc' at the correct position for
		 * the next outer loop.
		 */
		for (j = 0; j < innatts; j++)
		{
			Form_pg_attribute inatt;

			nextindesc++;
			if (nextindesc >= innatts)
				nextindesc = 0;

			inatt = FUNC1(indesc, nextindesc);
			if (inatt->attisdropped)
				continue;
			if (FUNC8(attname, FUNC0(inatt->attname)) == 0)
			{
				/* Found it, check type */
				if (atttypid != inatt->atttypid || atttypmod != inatt->atttypmod)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_DATATYPE_MISMATCH),
							 FUNC5("could not convert row type"),
							 FUNC4("Attribute \"%s\" of type %s does not match corresponding attribute of type %s.",
									   attname,
									   FUNC6(outdesc->tdtypeid),
									   FUNC6(indesc->tdtypeid))));
				attrMap[i] = inatt->attnum;
				break;
			}
		}
		if (attrMap[i] == 0)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_DATATYPE_MISMATCH),
					 FUNC5("could not convert row type"),
					 FUNC4("Attribute \"%s\" of type %s does not exist in type %s.",
							   attname,
							   FUNC6(outdesc->tdtypeid),
							   FUNC6(indesc->tdtypeid))));
	}
	return attrMap;
}