#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; int attnum; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef  scalar_t__ Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(Relation oldrelation, Relation newrelation,
						  Index newvarno,
						  List **translated_vars)
{
	List	   *vars = NIL;
	TupleDesc	old_tupdesc = FUNC3(oldrelation);
	TupleDesc	new_tupdesc = FUNC3(newrelation);
	Oid			new_relid = FUNC5(newrelation);
	int			oldnatts = old_tupdesc->natts;
	int			newnatts = new_tupdesc->natts;
	int			old_attno;
	int			new_attno = 0;

	for (old_attno = 0; old_attno < oldnatts; old_attno++)
	{
		Form_pg_attribute att;
		char	   *attname;
		Oid			atttypid;
		int32		atttypmod;
		Oid			attcollation;

		att = FUNC8(old_tupdesc, old_attno);
		if (att->attisdropped)
		{
			/* Just put NULL into this list entry */
			vars = FUNC10(vars, NULL);
			continue;
		}
		attname = FUNC2(att->attname);
		atttypid = att->atttypid;
		atttypmod = att->atttypmod;
		attcollation = att->attcollation;

		/*
		 * When we are generating the "translation list" for the parent table
		 * of an inheritance set, no need to search for matches.
		 */
		if (oldrelation == newrelation)
		{
			vars = FUNC10(vars, FUNC11(newvarno,
										 (AttrNumber) (old_attno + 1),
										 atttypid,
										 atttypmod,
										 attcollation,
										 0));
			continue;
		}

		/*
		 * Otherwise we have to search for the matching column by name.
		 * There's no guarantee it'll have the same column position, because
		 * of cases like ALTER TABLE ADD COLUMN and multiple inheritance.
		 * However, in simple cases, the relative order of columns is mostly
		 * the same in both relations, so try the column of newrelation that
		 * follows immediately after the one that we just found, and if that
		 * fails, let syscache handle it.
		 */
		if (new_attno >= newnatts ||
			(att = FUNC8(new_tupdesc, new_attno))->attisdropped ||
			FUNC12(attname, FUNC2(att->attname)) != 0)
		{
			HeapTuple	newtup;

			newtup = FUNC7(new_relid, attname);
			if (!FUNC1(newtup))
				FUNC9(ERROR, "could not find inherited attribute \"%s\" of relation \"%s\"",
					 attname, FUNC4(newrelation));
			new_attno = ((Form_pg_attribute) FUNC0(newtup))->attnum - 1;
			FUNC6(newtup);

			att = FUNC8(new_tupdesc, new_attno);
		}

		/* Found it, check type and collation match */
		if (atttypid != att->atttypid || atttypmod != att->atttypmod)
			FUNC9(ERROR, "attribute \"%s\" of relation \"%s\" does not match parent's type",
				 attname, FUNC4(newrelation));
		if (attcollation != att->attcollation)
			FUNC9(ERROR, "attribute \"%s\" of relation \"%s\" does not match parent's collation",
				 attname, FUNC4(newrelation));

		vars = FUNC10(vars, FUNC11(newvarno,
									 (AttrNumber) (new_attno + 1),
									 atttypid,
									 atttypmod,
									 attcollation,
									 0));
		new_attno++;
	}

	*translated_vars = vars;
}