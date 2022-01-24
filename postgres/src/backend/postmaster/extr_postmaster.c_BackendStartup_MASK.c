#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_11__ {int dead_end; int bgworker_notify; int /*<<< orphan*/  elem; int /*<<< orphan*/  bkend_type; scalar_t__ pid; scalar_t__ child_slot; int /*<<< orphan*/  cancel_key; } ;
struct TYPE_10__ {scalar_t__ canAcceptConnections; scalar_t__ sock; } ;
typedef  TYPE_1__ Port ;
typedef  TYPE_2__ Backend ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  BACKEND_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  BackendList ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ CAC_OK ; 
 scalar_t__ CAC_WAITBACKUP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MyCancelKey ; 
 scalar_t__ MyPMChildSlot ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int STATUS_ERROR ; 
 int STATUS_OK ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 
 int errno ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC19(Port *port)
{
	Backend    *bn;				/* for backend cleanup */
	pid_t		pid;

	/*
	 * Create backend data structure.  Better before the fork() so we can
	 * handle failure cleanly.
	 */
	bn = (Backend *) FUNC17(sizeof(Backend));
	if (!bn)
	{
		FUNC11(LOG,
				(FUNC12(ERRCODE_OUT_OF_MEMORY),
				 FUNC13("out of memory")));
		return STATUS_ERROR;
	}

	/*
	 * Compute the cancel key that will be assigned to this backend. The
	 * backend will have its own copy in the forked-off process' value of
	 * MyCancelKey, so that it can transmit the key to the frontend.
	 */
	if (!FUNC5(&MyCancelKey))
	{
		FUNC16(bn);
		FUNC11(LOG,
				(FUNC12(ERRCODE_INTERNAL_ERROR),
				 FUNC13("could not generate random cancel key")));
		return STATUS_ERROR;
	}

	bn->cancel_key = MyCancelKey;

	/* Pass down canAcceptConnections state */
	port->canAcceptConnections = FUNC9(BACKEND_TYPE_NORMAL);
	bn->dead_end = (port->canAcceptConnections != CAC_OK &&
					port->canAcceptConnections != CAC_WAITBACKUP);

	/*
	 * Unless it's a dead_end child, assign it a child slot number
	 */
	if (!bn->dead_end)
		bn->child_slot = MyPMChildSlot = FUNC0();
	else
		bn->child_slot = 0;

	/* Hasn't asked to be notified about any bgworkers yet */
	bn->bgworker_notify = false;

#ifdef EXEC_BACKEND
	pid = backend_forkexec(port);
#else							/* !EXEC_BACKEND */
	pid = FUNC15();
	if (pid == 0)				/* child */
	{
		FUNC16(bn);

		/* Detangle from postmaster */
		FUNC4();

		/* Close the postmaster's sockets */
		FUNC3(false);

		/* Perform additional initialization and collect startup packet */
		FUNC1(port);

		/* And run the backend */
		FUNC2(port);
	}
#endif							/* EXEC_BACKEND */

	if (pid < 0)
	{
		/* in parent, fork failed */
		int			save_errno = errno;

		if (!bn->dead_end)
			(void) FUNC6(bn->child_slot);
		FUNC16(bn);
		errno = save_errno;
		FUNC11(LOG,
				(FUNC13("could not fork new process for connection: %m")));
		FUNC18(port, save_errno);
		return STATUS_ERROR;
	}

	/* in parent, successful fork */
	FUNC11(DEBUG2,
			(FUNC14("forked new backend, pid=%d socket=%d",
							 (int) pid, (int) port->sock)));

	/*
	 * Everything's been successful, it's safe to add this backend to our list
	 * of backends.
	 */
	bn->pid = pid;
	bn->bkend_type = BACKEND_TYPE_NORMAL;	/* Can change later to WALSND */
	FUNC10(&BackendList, &bn->elem);

#ifdef EXEC_BACKEND
	if (!bn->dead_end)
		ShmemBackendArrayAdd(bn);
#endif

	return STATUS_OK;
}