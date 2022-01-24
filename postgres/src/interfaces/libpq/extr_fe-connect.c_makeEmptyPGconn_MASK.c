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
typedef  int /*<<< orphan*/  WSADATA ;
struct TYPE_6__ {int /*<<< orphan*/  noticeProc; int /*<<< orphan*/  noticeRec; } ;
struct TYPE_7__ {int options_valid; int nonblocking; int std_strings; int try_gss; int inBufSize; char* inBuffer; int outBufSize; char* outBuffer; int rowBufLen; int /*<<< orphan*/  workBuffer; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/ * rowBuf; int /*<<< orphan*/  sock; int /*<<< orphan*/  show_context; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  client_encoding; int /*<<< orphan*/  setenv_state; int /*<<< orphan*/  xactStatus; int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/  status; TYPE_1__ noticeHooks; } ;
typedef  int /*<<< orphan*/  PGdataValue ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGASYNC_IDLE ; 
 int /*<<< orphan*/  PGINVALID_SOCKET ; 
 int /*<<< orphan*/  PG_SQL_ASCII ; 
 int /*<<< orphan*/  PQERRORS_DEFAULT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PQSHOW_CONTEXT_ERRORS ; 
 int /*<<< orphan*/  PQTRANS_IDLE ; 
 int /*<<< orphan*/  SETENV_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  defaultNoticeProcessor ; 
 int /*<<< orphan*/  defaultNoticeReceiver ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static PGconn *
FUNC9(void)
{
	PGconn	   *conn;

#ifdef WIN32

	/*
	 * Make sure socket support is up and running.
	 */
	WSADATA		wsaData;

	if (WSAStartup(MAKEWORD(1, 1), &wsaData))
		return NULL;
	WSASetLastError(0);
#endif

	conn = (PGconn *) FUNC8(sizeof(PGconn));
	if (conn == NULL)
	{
#ifdef WIN32
		WSACleanup();
#endif
		return conn;
	}

	/* Zero all pointers and booleans */
	FUNC1(conn, 0, sizeof(PGconn));

	/* install default notice hooks */
	conn->noticeHooks.noticeRec = defaultNoticeReceiver;
	conn->noticeHooks.noticeProc = defaultNoticeProcessor;

	conn->status = CONNECTION_BAD;
	conn->asyncStatus = PGASYNC_IDLE;
	conn->xactStatus = PQTRANS_IDLE;
	conn->options_valid = false;
	conn->nonblocking = false;
	conn->setenv_state = SETENV_STATE_IDLE;
	conn->client_encoding = PG_SQL_ASCII;
	conn->std_strings = false;	/* unless server says differently */
	conn->verbosity = PQERRORS_DEFAULT;
	conn->show_context = PQSHOW_CONTEXT_ERRORS;
	conn->sock = PGINVALID_SOCKET;
#ifdef ENABLE_GSS
	conn->try_gss = true;
#endif

	/*
	 * We try to send at least 8K at a time, which is the usual size of pipe
	 * buffers on Unix systems.  That way, when we are sending a large amount
	 * of data, we avoid incurring extra kernel context swaps for partial
	 * bufferloads.  The output buffer is initially made 16K in size, and we
	 * try to dump it after accumulating 8K.
	 *
	 * With the same goal of minimizing context swaps, the input buffer will
	 * be enlarged anytime it has less than 8K free, so we initially allocate
	 * twice that.
	 */
	conn->inBufSize = 16 * 1024;
	conn->inBuffer = (char *) FUNC8(conn->inBufSize);
	conn->outBufSize = 16 * 1024;
	conn->outBuffer = (char *) FUNC8(conn->outBufSize);
	conn->rowBufLen = 32;
	conn->rowBuf = (PGdataValue *) FUNC8(conn->rowBufLen * sizeof(PGdataValue));
	FUNC7(&conn->errorMessage);
	FUNC7(&conn->workBuffer);

	if (conn->inBuffer == NULL ||
		conn->outBuffer == NULL ||
		conn->rowBuf == NULL ||
		FUNC2(&conn->errorMessage) ||
		FUNC2(&conn->workBuffer))
	{
		/* out of memory already :-( */
		FUNC6(conn);
		conn = NULL;
	}

	return conn;
}