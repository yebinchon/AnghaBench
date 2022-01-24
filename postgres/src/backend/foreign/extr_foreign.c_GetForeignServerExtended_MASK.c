#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int bits16 ;
struct TYPE_5__ {int /*<<< orphan*/  options; int /*<<< orphan*/ * serverversion; int /*<<< orphan*/ * servertype; int /*<<< orphan*/  fdwid; int /*<<< orphan*/  owner; int /*<<< orphan*/  servername; int /*<<< orphan*/  serverid; } ;
struct TYPE_4__ {int /*<<< orphan*/  srvfdw; int /*<<< orphan*/  srvowner; int /*<<< orphan*/  srvname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_foreign_server ;
typedef  TYPE_2__ ForeignServer ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_foreign_server_srvoptions ; 
 int /*<<< orphan*/  Anum_pg_foreign_server_srvtype ; 
 int /*<<< orphan*/  Anum_pg_foreign_server_srvversion ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNSERVEROID ; 
 int FSV_MISSING_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

ForeignServer *
FUNC12(Oid serverid, bits16 flags)
{
	Form_pg_foreign_server serverform;
	ForeignServer *server;
	HeapTuple	tp;
	Datum		datum;
	bool		isnull;

	tp = FUNC5(FOREIGNSERVEROID, FUNC3(serverid));

	if (!FUNC1(tp))
	{
		if ((flags & FSV_MISSING_OK) == 0)
			FUNC8(ERROR, "cache lookup failed for foreign server %u", serverid);
		return NULL;
	}

	serverform = (Form_pg_foreign_server) FUNC0(tp);

	server = (ForeignServer *) FUNC9(sizeof(ForeignServer));
	server->serverid = serverid;
	server->servername = FUNC10(FUNC2(serverform->srvname));
	server->owner = serverform->srvowner;
	server->fdwid = serverform->srvfdw;

	/* Extract server type */
	datum = FUNC6(FOREIGNSERVEROID,
							tp,
							Anum_pg_foreign_server_srvtype,
							&isnull);
	server->servertype = isnull ? NULL : FUNC7(datum);

	/* Extract server version */
	datum = FUNC6(FOREIGNSERVEROID,
							tp,
							Anum_pg_foreign_server_srvversion,
							&isnull);
	server->serverversion = isnull ? NULL : FUNC7(datum);

	/* Extract the srvoptions */
	datum = FUNC6(FOREIGNSERVEROID,
							tp,
							Anum_pg_foreign_server_srvoptions,
							&isnull);
	if (isnull)
		server->options = NIL;
	else
		server->options = FUNC11(datum);

	FUNC4(tp);

	return server;
}