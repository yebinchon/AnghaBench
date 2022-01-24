#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_13__ {int /*<<< orphan*/  fdwname; } ;
struct TYPE_12__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  srvowner; int /*<<< orphan*/  srvfdw; int /*<<< orphan*/  srvname; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_foreign_server ;
typedef  TYPE_3__ ForeignDataWrapper ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AclResult ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int Anum_pg_foreign_server_srvacl ; 
 int Anum_pg_foreign_server_srvowner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ForeignServerRelationId ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int Natts_pg_foreign_server ; 
 int /*<<< orphan*/  OBJECT_FDW ; 
 int /*<<< orphan*/  OBJECT_FOREIGN_SERVER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void
FUNC20(Relation rel, HeapTuple tup, Oid newOwnerId)
{
	Form_pg_foreign_server form;
	Datum		repl_val[Natts_pg_foreign_server];
	bool		repl_null[Natts_pg_foreign_server];
	bool		repl_repl[Natts_pg_foreign_server];
	Acl		   *newAcl;
	Datum		aclDatum;
	bool		isNull;

	form = (Form_pg_foreign_server) FUNC2(tup);

	if (form->srvowner != newOwnerId)
	{
		/* Superusers can always do it */
		if (!FUNC19())
		{
			Oid			srvId;
			AclResult	aclresult;

			srvId = form->oid;

			/* Must be owner */
			if (!FUNC18(srvId, FUNC4()))
				FUNC10(ACLCHECK_NOT_OWNER, OBJECT_FOREIGN_SERVER,
							   FUNC6(form->srvname));

			/* Must be able to become new owner */
			FUNC13(FUNC4(), newOwnerId);

			/* New owner must have USAGE privilege on foreign-data wrapper */
			aclresult = FUNC17(form->srvfdw, newOwnerId, ACL_USAGE);
			if (aclresult != ACLCHECK_OK)
			{
				ForeignDataWrapper *fdw = FUNC3(form->srvfdw);

				FUNC10(aclresult, OBJECT_FDW, fdw->fdwname);
			}
		}

		FUNC16(repl_null, false, sizeof(repl_null));
		FUNC16(repl_repl, false, sizeof(repl_repl));

		repl_repl[Anum_pg_foreign_server_srvowner - 1] = true;
		repl_val[Anum_pg_foreign_server_srvowner - 1] = FUNC7(newOwnerId);

		aclDatum = FUNC14(tup,
								Anum_pg_foreign_server_srvacl,
								FUNC9(rel),
								&isNull);
		/* Null ACLs do not require changes */
		if (!isNull)
		{
			newAcl = FUNC11(FUNC1(aclDatum),
								 form->srvowner, newOwnerId);
			repl_repl[Anum_pg_foreign_server_srvacl - 1] = true;
			repl_val[Anum_pg_foreign_server_srvacl - 1] = FUNC8(newAcl);
		}

		tup = FUNC15(tup, FUNC9(rel), repl_val, repl_null,
								repl_repl);

		FUNC0(rel, &tup->t_self, tup);

		/* Update owner dependency reference */
		FUNC12(ForeignServerRelationId, form->oid,
								newOwnerId);
	}

	FUNC5(ForeignServerRelationId,
							  form->oid, 0);
}