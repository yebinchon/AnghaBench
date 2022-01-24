#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fdwname; int /*<<< orphan*/  fdwhandler; } ;
struct TYPE_3__ {int /*<<< orphan*/  srvfdw; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_foreign_server ;
typedef  TYPE_2__* Form_pg_foreign_data_wrapper ;
typedef  int /*<<< orphan*/  FdwRoutine ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPEROID ; 
 int /*<<< orphan*/  FOREIGNSERVEROID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

FdwRoutine *
FUNC12(Oid serverid)
{
	HeapTuple	tp;
	Form_pg_foreign_data_wrapper fdwform;
	Form_pg_foreign_server serverform;
	Oid			fdwid;
	Oid			fdwhandler;

	/* Get foreign-data wrapper OID for the server. */
	tp = FUNC7(FOREIGNSERVEROID, FUNC4(serverid));
	if (!FUNC2(tp))
		FUNC8(ERROR, "cache lookup failed for foreign server %u", serverid);
	serverform = (Form_pg_foreign_server) FUNC0(tp);
	fdwid = serverform->srvfdw;
	FUNC6(tp);

	/* Get handler function OID for the FDW. */
	tp = FUNC7(FOREIGNDATAWRAPPEROID, FUNC4(fdwid));
	if (!FUNC2(tp))
		FUNC8(ERROR, "cache lookup failed for foreign-data wrapper %u", fdwid);
	fdwform = (Form_pg_foreign_data_wrapper) FUNC0(tp);
	fdwhandler = fdwform->fdwhandler;

	/* Complain if FDW has been set to NO HANDLER. */
	if (!FUNC5(fdwhandler))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC11("foreign-data wrapper \"%s\" has no handler",
						FUNC3(fdwform->fdwname))));

	FUNC6(tp);

	/* And finally, call the handler function. */
	return FUNC1(fdwhandler);
}