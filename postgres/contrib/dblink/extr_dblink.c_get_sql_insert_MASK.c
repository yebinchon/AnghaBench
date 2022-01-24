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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_18__ {scalar_t__ attisdropped; int /*<<< orphan*/  attname; } ;
struct TYPE_17__ {TYPE_1__* rd_att; } ;
struct TYPE_16__ {char* data; } ;
struct TYPE_15__ {int natts; } ;
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
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int*,int,char**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*) ; 

__attribute__((used)) static char *
FUNC17(Relation rel, int *pkattnums, int pknumatts, char **src_pkattvals, char **tgt_pkattvals)
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

	FUNC12(&buf);

	/* get relation name including any needed schema prefix and quoting */
	relname = FUNC9(rel);

	tupdesc = rel->rd_att;
	natts = tupdesc->natts;

	tuple = FUNC11(rel, pkattnums, pknumatts, src_pkattvals);
	if (!tuple)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_CARDINALITY_VIOLATION),
				 FUNC8("source row not found")));

	FUNC3(&buf, "INSERT INTO %s(", relname);

	needComma = false;
	for (i = 0; i < natts; i++)
	{
		Form_pg_attribute att = FUNC2(tupdesc, i);

		if (att->attisdropped)
			continue;

		if (needComma)
			FUNC4(&buf, ',');

		FUNC5(&buf,
							   FUNC15(FUNC0(att->attname)));
		needComma = true;
	}

	FUNC5(&buf, ") VALUES(");

	/*
	 * Note: i is physical column number (counting from 0).
	 */
	needComma = false;
	for (i = 0; i < natts; i++)
	{
		if (FUNC2(tupdesc, i)->attisdropped)
			continue;

		if (needComma)
			FUNC4(&buf, ',');

		key = FUNC10(pkattnums, pknumatts, i);

		if (key >= 0)
			val = tgt_pkattvals[key] ? FUNC14(tgt_pkattvals[key]) : NULL;
		else
			val = FUNC1(tuple, tupdesc, i + 1);

		if (val != NULL)
		{
			FUNC5(&buf, FUNC16(val));
			FUNC13(val);
		}
		else
			FUNC5(&buf, "NULL");
		needComma = true;
	}
	FUNC4(&buf, ')');

	return buf.data;
}