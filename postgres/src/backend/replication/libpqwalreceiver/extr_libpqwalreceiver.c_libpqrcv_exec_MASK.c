#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  streamConn; } ;
typedef  TYPE_1__ WalReceiverConn ;
struct TYPE_8__ {int /*<<< orphan*/  err; void* status; } ;
typedef  TYPE_2__ WalRcvExecResult ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ MyDatabaseId ; 
#define  PGRES_BAD_RESPONSE 137 
#define  PGRES_COMMAND_OK 136 
#define  PGRES_COPY_BOTH 135 
#define  PGRES_COPY_IN 134 
#define  PGRES_COPY_OUT 133 
#define  PGRES_EMPTY_QUERY 132 
#define  PGRES_FATAL_ERROR 131 
#define  PGRES_NONFATAL_ERROR 130 
#define  PGRES_SINGLE_TUPLE 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* WALRCV_ERROR ; 
 void* WALRCV_OK_COMMAND ; 
 void* WALRCV_OK_COPY_BOTH ; 
 void* WALRCV_OK_COPY_IN ; 
 void* WALRCV_OK_COPY_OUT ; 
 void* WALRCV_OK_TUPLES ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int const,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static WalRcvExecResult *
FUNC11(WalReceiverConn *conn, const char *query,
			  const int nRetTypes, const Oid *retTypes)
{
	PGresult   *pgres = NULL;
	WalRcvExecResult *walres = FUNC9(sizeof(WalRcvExecResult));

	if (MyDatabaseId == InvalidOid)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("the query interface requires a database connection")));

	pgres = FUNC7(conn->streamConn, query);

	switch (FUNC2(pgres))
	{
		case PGRES_SINGLE_TUPLE:
		case PGRES_TUPLES_OK:
			walres->status = WALRCV_OK_TUPLES;
			FUNC8(pgres, walres, nRetTypes, retTypes);
			break;

		case PGRES_COPY_IN:
			walres->status = WALRCV_OK_COPY_IN;
			break;

		case PGRES_COPY_OUT:
			walres->status = WALRCV_OK_COPY_OUT;
			break;

		case PGRES_COPY_BOTH:
			walres->status = WALRCV_OK_COPY_BOTH;
			break;

		case PGRES_COMMAND_OK:
			walres->status = WALRCV_OK_COMMAND;
			break;

			/* Empty query is considered error. */
		case PGRES_EMPTY_QUERY:
			walres->status = WALRCV_ERROR;
			walres->err = FUNC3("empty query");
			break;

		case PGRES_NONFATAL_ERROR:
		case PGRES_FATAL_ERROR:
		case PGRES_BAD_RESPONSE:
			walres->status = WALRCV_ERROR;
			walres->err = FUNC10(FUNC1(conn->streamConn));
			break;
	}

	FUNC0(pgres);

	return walres;
}