#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pg_gssinfo ;
struct TYPE_5__ {scalar_t__ sock; int /*<<< orphan*/ * gss; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ PGINVALID_SOCKET ; 
 scalar_t__ STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static Port *
FUNC8(int serverFd)
{
	Port	   *port;

	if (!(port = (Port *) FUNC4(1, sizeof(Port))))
	{
		FUNC5(LOG,
				(FUNC6(ERRCODE_OUT_OF_MEMORY),
				 FUNC7("out of memory")));
		FUNC1(1);
	}

	if (FUNC3(serverFd, port) != STATUS_OK)
	{
		if (port->sock != PGINVALID_SOCKET)
			FUNC2(port->sock);
		FUNC0(port);
		return NULL;
	}

	/*
	 * Allocate GSSAPI specific state struct
	 */
#ifndef EXEC_BACKEND
#if defined(ENABLE_GSS) || defined(ENABLE_SSPI)
	port->gss = (pg_gssinfo *) calloc(1, sizeof(pg_gssinfo));
	if (!port->gss)
	{
		ereport(LOG,
				(errcode(ERRCODE_OUT_OF_MEMORY),
				 errmsg("out of memory")));
		ExitPostmaster(1);
	}
#endif
#endif

	return port;
}