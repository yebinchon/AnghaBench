#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_10__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  fdwowner; int /*<<< orphan*/  fdwname; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_foreign_data_wrapper ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int Anum_pg_foreign_data_wrapper_fdwacl ; 
 int Anum_pg_foreign_data_wrapper_fdwowner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForeignDataWrapperRelationId ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int Natts_pg_foreign_data_wrapper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(Relation rel, HeapTuple tup, Oid newOwnerId)
{
	Form_pg_foreign_data_wrapper form;
	Datum		repl_val[Natts_pg_foreign_data_wrapper];
	bool		repl_null[Natts_pg_foreign_data_wrapper];
	bool		repl_repl[Natts_pg_foreign_data_wrapper];
	Acl		   *newAcl;
	Datum		aclDatum;
	bool		isNull;

	form = (Form_pg_foreign_data_wrapper) FUNC2(tup);

	/* Must be a superuser to change a FDW owner */
	if (!FUNC17())
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC13("permission denied to change owner of foreign-data wrapper \"%s\"",
						FUNC4(form->fdwname)),
				 FUNC12("Must be superuser to change owner of a foreign-data wrapper.")));

	/* New owner must also be a superuser */
	if (!FUNC18(newOwnerId))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC13("permission denied to change owner of foreign-data wrapper \"%s\"",
						FUNC4(form->fdwname)),
				 FUNC12("The owner of a foreign-data wrapper must be a superuser.")));

	if (form->fdwowner != newOwnerId)
	{
		FUNC16(repl_null, false, sizeof(repl_null));
		FUNC16(repl_repl, false, sizeof(repl_repl));

		repl_repl[Anum_pg_foreign_data_wrapper_fdwowner - 1] = true;
		repl_val[Anum_pg_foreign_data_wrapper_fdwowner - 1] = FUNC5(newOwnerId);

		aclDatum = FUNC14(tup,
								Anum_pg_foreign_data_wrapper_fdwacl,
								FUNC7(rel),
								&isNull);
		/* Null ACLs do not require changes */
		if (!isNull)
		{
			newAcl = FUNC8(FUNC1(aclDatum),
								 form->fdwowner, newOwnerId);
			repl_repl[Anum_pg_foreign_data_wrapper_fdwacl - 1] = true;
			repl_val[Anum_pg_foreign_data_wrapper_fdwacl - 1] = FUNC6(newAcl);
		}

		tup = FUNC15(tup, FUNC7(rel), repl_val, repl_null,
								repl_repl);

		FUNC0(rel, &tup->t_self, tup);

		/* Update owner dependency reference */
		FUNC9(ForeignDataWrapperRelationId,
								form->oid,
								newOwnerId);
	}

	FUNC3(ForeignDataWrapperRelationId,
							  form->oid, 0);
}