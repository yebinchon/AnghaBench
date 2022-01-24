#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_17__ {int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_16__ {TYPE_1__* rd_att; } ;
struct TYPE_15__ {char* data; } ;
struct TYPE_14__ {int natts; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CARDINALITY_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 TYPE_4__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (TYPE_3__*) ; 
 int FUNC9 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int*,int,char**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*) ; 

__attribute__((used)) static char *
FUNC16(Relation rel, int *pkattnums, int pknumatts, char **src_pkattvals, char **tgt_pkattvals)
{
	char	   *relname;
	HeapTuple	tuple;
	TupleDesc	tupdesc;
	int			natts;
	StringInfoData buf;
	char	   *val;
	int			key;
	int			i;
	bool		needComma;

	FUNC11(&buf);

	/* get relation name including any needed schema prefix and quoting */
	relname = FUNC8(rel);

	tupdesc = rel->rd_att;
	natts = tupdesc->natts;

	tuple = FUNC10(rel, pkattnums, pknumatts, src_pkattvals);
	if (!tuple)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_CARDINALITY_VIOLATION),
				 FUNC7("source row not found")));

	FUNC3(&buf, "UPDATE %s SET ", relname);

	/*
	 * Note: i is physical column number (counting from 0).
	 */
	needComma = false;
	for (i = 0; i < natts; i++)
	{
		Form_pg_attribute attr = FUNC2(tupdesc, i);

		if (attr->attisdropped)
			continue;

		if (needComma)
			FUNC4(&buf, ", ");

		FUNC3(&buf, "%s = ",
						 FUNC14(FUNC0(attr->attname)));

		key = FUNC9(pkattnums, pknumatts, i);

		if (key >= 0)
			val = tgt_pkattvals[key] ? FUNC13(tgt_pkattvals[key]) : NULL;
		else
			val = FUNC1(tuple, tupdesc, i + 1);

		if (val != NULL)
		{
			FUNC4(&buf, FUNC15(val));
			FUNC12(val);
		}
		else
			FUNC4(&buf, "NULL");
		needComma = true;
	}

	FUNC4(&buf, " WHERE ");

	for (i = 0; i < pknumatts; i++)
	{
		int			pkattnum = pkattnums[i];
		Form_pg_attribute attr = FUNC2(tupdesc, pkattnum);

		if (i > 0)
			FUNC4(&buf, " AND ");

		FUNC4(&buf,
							   FUNC14(FUNC0(attr->attname)));

		val = tgt_pkattvals[i];

		if (val != NULL)
			FUNC3(&buf, " = %s", FUNC15(val));
		else
			FUNC4(&buf, " IS NULL");
	}

	return buf.data;
}