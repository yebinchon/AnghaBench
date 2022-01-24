#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbuf ;
struct TYPE_4__ {int /*<<< orphan*/  encoding; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {int sversion; int /*<<< orphan*/  show_context; int /*<<< orphan*/  db; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  vars; int /*<<< orphan*/  encoding; TYPE_2__ popt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,char*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 

void
FUNC13(void)
{
	char		vbuf[32];
	const char *server_version;

	/* get stuff from connection */
	pset.encoding = FUNC0(pset.db);
	pset.popt.topt.encoding = pset.encoding;
	pset.sversion = FUNC5(pset.db);

	FUNC9(pset.vars, "DBNAME", FUNC1(pset.db));
	FUNC9(pset.vars, "USER", FUNC8(pset.db));
	FUNC9(pset.vars, "HOST", FUNC2(pset.db));
	FUNC9(pset.vars, "PORT", FUNC4(pset.db));
	FUNC9(pset.vars, "ENCODING", FUNC11(pset.encoding));

	/* this bit should match connection_warnings(): */
	/* Try to get full text form of version, might include "devel" etc */
	server_version = FUNC3(pset.db, "server_version");
	/* Otherwise fall back on pset.sversion */
	if (!server_version)
	{
		FUNC10(pset.sversion, true, vbuf, sizeof(vbuf));
		server_version = vbuf;
	}
	FUNC9(pset.vars, "SERVER_VERSION_NAME", server_version);

	FUNC12(vbuf, sizeof(vbuf), "%d", pset.sversion);
	FUNC9(pset.vars, "SERVER_VERSION_NUM", vbuf);

	/* send stuff to it, too */
	FUNC7(pset.db, pset.verbosity);
	FUNC6(pset.db, pset.show_context);
}