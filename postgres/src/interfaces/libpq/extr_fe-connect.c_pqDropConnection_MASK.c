#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sock; int /*<<< orphan*/ * sasl_state; scalar_t__ usesspi; int /*<<< orphan*/ * sspictx; int /*<<< orphan*/ * sspicred; int /*<<< orphan*/ * sspitarget; int /*<<< orphan*/  gtarg_nam; int /*<<< orphan*/  gctx; scalar_t__ outCount; scalar_t__ inEnd; scalar_t__ inCursor; scalar_t__ inStart; } ;
typedef  TYPE_1__ PGconn ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(PGconn *conn, bool flushInput)
{
	/* Drop any SSL state */
	FUNC7(conn);

	/* Close the socket itself */
	if (conn->sock != PGINVALID_SOCKET)
		FUNC2(conn->sock);
	conn->sock = PGINVALID_SOCKET;

	/* Optionally discard any unread data */
	if (flushInput)
		conn->inStart = conn->inCursor = conn->inEnd = 0;

	/* Always discard any unsent data */
	conn->outCount = 0;

	/* Free authentication state */
#ifdef ENABLE_GSS
	{
		OM_uint32	min_s;

		if (conn->gctx)
			gss_delete_sec_context(&min_s, &conn->gctx, GSS_C_NO_BUFFER);
		if (conn->gtarg_nam)
			gss_release_name(&min_s, &conn->gtarg_nam);
	}
#endif
#ifdef ENABLE_SSPI
	if (conn->sspitarget)
	{
		free(conn->sspitarget);
		conn->sspitarget = NULL;
	}
	if (conn->sspicred)
	{
		FreeCredentialsHandle(conn->sspicred);
		free(conn->sspicred);
		conn->sspicred = NULL;
	}
	if (conn->sspictx)
	{
		DeleteSecurityContext(conn->sspictx);
		free(conn->sspictx);
		conn->sspictx = NULL;
	}
	conn->usesspi = 0;
#endif
	if (conn->sasl_state)
	{
		/*
		 * XXX: if support for more authentication mechanisms is added, this
		 * needs to call the right 'free' function.
		 */
		FUNC6(conn->sasl_state);
		conn->sasl_state = NULL;
	}
}