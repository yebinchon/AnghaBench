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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ atttypid; scalar_t__ attcollation; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 scalar_t__ ANYARRAYOID ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int CHKATYPE_ANYARRAY ; 
 int CHKATYPE_ANYRECORD ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ RECORDARRAYOID ; 
 scalar_t__ RECORDOID ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 char TYPTYPE_COMPOSITE ; 
 char TYPTYPE_DOMAIN ; 
 char TYPTYPE_PSEUDO ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 char FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 

void
FUNC19(const char *attname,
				   Oid atttypid, Oid attcollation,
				   List *containing_rowtypes,
				   int flags)
{
	char		att_typtype = FUNC12(atttypid);
	Oid			att_typelem;

	if (att_typtype == TYPTYPE_PSEUDO)
	{
		/*
		 * We disallow pseudo-type columns, with the exception of ANYARRAY,
		 * RECORD, and RECORD[] when the caller says that those are OK.
		 *
		 * We don't need to worry about recursive containment for RECORD and
		 * RECORD[] because (a) no named composite type should be allowed to
		 * contain those, and (b) two "anonymous" record types couldn't be
		 * considered to be the same type, so infinite recursion isn't
		 * possible.
		 */
		if (!((atttypid == ANYARRAYOID && (flags & CHKATYPE_ANYARRAY)) ||
			  (atttypid == RECORDOID && (flags & CHKATYPE_ANYRECORD)) ||
			  (atttypid == RECORDARRAYOID && (flags & CHKATYPE_ANYRECORD))))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC7("column \"%s\" has pseudo-type %s",
							attname, FUNC8(atttypid))));
	}
	else if (att_typtype == TYPTYPE_DOMAIN)
	{
		/*
		 * If it's a domain, recurse to check its base type.
		 */
		FUNC19(attname, FUNC9(atttypid), attcollation,
						   containing_rowtypes,
						   flags);
	}
	else if (att_typtype == TYPTYPE_COMPOSITE)
	{
		/*
		 * For a composite type, recurse into its attributes.
		 */
		Relation	relation;
		TupleDesc	tupdesc;
		int			i;

		/*
		 * Check for self-containment.  Eventually we might be able to allow
		 * this (just return without complaint, if so) but it's not clear how
		 * many other places would require anti-recursion defenses before it
		 * would be safe to allow tables to contain their own rowtype.
		 */
		if (FUNC15(containing_rowtypes, atttypid))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC7("composite type %s cannot be made a member of itself",
							FUNC8(atttypid))));

		containing_rowtypes = FUNC13(containing_rowtypes, atttypid);

		relation = FUNC17(FUNC11(atttypid), AccessShareLock);

		tupdesc = FUNC2(relation);

		for (i = 0; i < tupdesc->natts; i++)
		{
			Form_pg_attribute attr = FUNC3(tupdesc, i);

			if (attr->attisdropped)
				continue;
			FUNC19(FUNC0(attr->attname),
							   attr->atttypid, attr->attcollation,
							   containing_rowtypes,
							   flags);
		}

		FUNC16(relation, AccessShareLock);

		containing_rowtypes = FUNC14(containing_rowtypes);
	}
	else if (FUNC1((att_typelem = FUNC10(atttypid))))
	{
		/*
		 * Must recurse into array types, too, in case they are composite.
		 */
		FUNC19(attname, att_typelem, attcollation,
						   containing_rowtypes,
						   flags);
	}

	/*
	 * This might not be strictly invalid per SQL standard, but it is pretty
	 * useless, and it cannot be dumped, so we must disallow it.
	 */
	if (!FUNC1(attcollation) && FUNC18(atttypid))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_TABLE_DEFINITION),
				 FUNC7("no collation was derived for column \"%s\" with collatable type %s",
						attname, FUNC8(atttypid)),
				 FUNC6("Use the COLLATE clause to set the collation explicitly.")));
}