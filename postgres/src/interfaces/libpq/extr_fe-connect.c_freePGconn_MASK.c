#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* conn; } ;
struct TYPE_8__ {int nEvents; int nconnhost; scalar_t__ gcred; int /*<<< orphan*/  workBuffer; int /*<<< orphan*/  errorMessage; struct TYPE_8__* target_session_attrs; struct TYPE_8__* rowBuf; struct TYPE_8__* outBuffer; struct TYPE_8__* inBuffer; struct TYPE_8__* write_err_msg; struct TYPE_8__* last_query; struct TYPE_8__* gsslib; int /*<<< orphan*/ * gctx; struct TYPE_8__* krbsrvname; struct TYPE_8__* gssencmode; struct TYPE_8__* connip; struct TYPE_8__* requirepeer; struct TYPE_8__* sslcompression; struct TYPE_8__* sslcrl; struct TYPE_8__* sslrootcert; struct TYPE_8__* sslkey; struct TYPE_8__* sslcert; struct TYPE_8__* sslmode; struct TYPE_8__* keepalives_count; struct TYPE_8__* keepalives_interval; struct TYPE_8__* keepalives_idle; struct TYPE_8__* keepalives; struct TYPE_8__* channel_binding; struct TYPE_8__* pgpassfile; struct TYPE_8__* pgpass; struct TYPE_8__* pguser; struct TYPE_8__* replication; struct TYPE_8__* dbName; struct TYPE_8__* fbappname; struct TYPE_8__* appname; struct TYPE_8__* pgoptions; struct TYPE_8__* pgtcp_user_timeout; struct TYPE_8__* connect_timeout; struct TYPE_8__* pgtty; struct TYPE_8__* pgport; struct TYPE_8__* pghostaddr; struct TYPE_8__* pghost; struct TYPE_8__* events; struct TYPE_8__* client_encoding_initial; struct TYPE_8__* connhost; struct TYPE_8__* password; struct TYPE_8__* port; struct TYPE_8__* hostaddr; struct TYPE_8__* host; struct TYPE_8__* name; int /*<<< orphan*/  passThrough; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ PGconn ;
typedef  TYPE_2__ PGEventConnDestroy ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 scalar_t__ GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  PGEVT_CONNDESTROY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(PGconn *conn)
{
	int			i;

	/* let any event procs clean up their state data */
	for (i = 0; i < conn->nEvents; i++)
	{
		PGEventConnDestroy evt;

		evt.conn = conn;
		(void) conn->events[i].proc(PGEVT_CONNDESTROY, &evt,
									conn->events[i].passThrough);
		FUNC2(conn->events[i].name);
	}

	/* clean up pg_conn_host structures */
	if (conn->connhost != NULL)
	{
		for (i = 0; i < conn->nconnhost; ++i)
		{
			if (conn->connhost[i].host != NULL)
				FUNC2(conn->connhost[i].host);
			if (conn->connhost[i].hostaddr != NULL)
				FUNC2(conn->connhost[i].hostaddr);
			if (conn->connhost[i].port != NULL)
				FUNC2(conn->connhost[i].port);
			if (conn->connhost[i].password != NULL)
			{
				FUNC1(conn->connhost[i].password, FUNC5(conn->connhost[i].password));
				FUNC2(conn->connhost[i].password);
			}
		}
		FUNC2(conn->connhost);
	}

	if (conn->client_encoding_initial)
		FUNC2(conn->client_encoding_initial);
	if (conn->events)
		FUNC2(conn->events);
	if (conn->pghost)
		FUNC2(conn->pghost);
	if (conn->pghostaddr)
		FUNC2(conn->pghostaddr);
	if (conn->pgport)
		FUNC2(conn->pgport);
	if (conn->pgtty)
		FUNC2(conn->pgtty);
	if (conn->connect_timeout)
		FUNC2(conn->connect_timeout);
	if (conn->pgtcp_user_timeout)
		FUNC2(conn->pgtcp_user_timeout);
	if (conn->pgoptions)
		FUNC2(conn->pgoptions);
	if (conn->appname)
		FUNC2(conn->appname);
	if (conn->fbappname)
		FUNC2(conn->fbappname);
	if (conn->dbName)
		FUNC2(conn->dbName);
	if (conn->replication)
		FUNC2(conn->replication);
	if (conn->pguser)
		FUNC2(conn->pguser);
	if (conn->pgpass)
	{
		FUNC1(conn->pgpass, FUNC5(conn->pgpass));
		FUNC2(conn->pgpass);
	}
	if (conn->pgpassfile)
		FUNC2(conn->pgpassfile);
	if (conn->channel_binding)
		FUNC2(conn->channel_binding);
	if (conn->keepalives)
		FUNC2(conn->keepalives);
	if (conn->keepalives_idle)
		FUNC2(conn->keepalives_idle);
	if (conn->keepalives_interval)
		FUNC2(conn->keepalives_interval);
	if (conn->keepalives_count)
		FUNC2(conn->keepalives_count);
	if (conn->sslmode)
		FUNC2(conn->sslmode);
	if (conn->sslcert)
		FUNC2(conn->sslcert);
	if (conn->sslkey)
		FUNC2(conn->sslkey);
	if (conn->sslrootcert)
		FUNC2(conn->sslrootcert);
	if (conn->sslcrl)
		FUNC2(conn->sslcrl);
	if (conn->sslcompression)
		FUNC2(conn->sslcompression);
	if (conn->requirepeer)
		FUNC2(conn->requirepeer);
	if (conn->connip)
		FUNC2(conn->connip);
	if (conn->gssencmode)
		FUNC2(conn->gssencmode);
#if defined(ENABLE_GSS) || defined(ENABLE_SSPI)
	if (conn->krbsrvname)
		free(conn->krbsrvname);
#endif
#ifdef ENABLE_GSS
	if (conn->gcred != GSS_C_NO_CREDENTIAL)
	{
		OM_uint32	minor;

		gss_release_cred(&minor, &conn->gcred);
		conn->gcred = GSS_C_NO_CREDENTIAL;
	}
	if (conn->gctx)
	{
		OM_uint32	minor;

		gss_delete_sec_context(&minor, &conn->gctx, GSS_C_NO_BUFFER);
		conn->gctx = NULL;
	}
#endif
#if defined(ENABLE_GSS) && defined(ENABLE_SSPI)
	if (conn->gsslib)
		free(conn->gsslib);
#endif
	/* Note that conn->Pfdebug is not ours to close or free */
	if (conn->last_query)
		FUNC2(conn->last_query);
	if (conn->write_err_msg)
		FUNC2(conn->write_err_msg);
	if (conn->inBuffer)
		FUNC2(conn->inBuffer);
	if (conn->outBuffer)
		FUNC2(conn->outBuffer);
	if (conn->rowBuf)
		FUNC2(conn->rowBuf);
	if (conn->target_session_attrs)
		FUNC2(conn->target_session_attrs);
	FUNC7(&conn->errorMessage);
	FUNC7(&conn->workBuffer);

	FUNC2(conn);

#ifdef WIN32
	WSACleanup();
#endif
}