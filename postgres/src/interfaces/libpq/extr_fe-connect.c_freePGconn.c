
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* conn; } ;
struct TYPE_8__ {int nEvents; int nconnhost; scalar_t__ gcred; int workBuffer; int errorMessage; struct TYPE_8__* target_session_attrs; struct TYPE_8__* rowBuf; struct TYPE_8__* outBuffer; struct TYPE_8__* inBuffer; struct TYPE_8__* write_err_msg; struct TYPE_8__* last_query; struct TYPE_8__* gsslib; int * gctx; struct TYPE_8__* krbsrvname; struct TYPE_8__* gssencmode; struct TYPE_8__* connip; struct TYPE_8__* requirepeer; struct TYPE_8__* sslcompression; struct TYPE_8__* sslcrl; struct TYPE_8__* sslrootcert; struct TYPE_8__* sslkey; struct TYPE_8__* sslcert; struct TYPE_8__* sslmode; struct TYPE_8__* keepalives_count; struct TYPE_8__* keepalives_interval; struct TYPE_8__* keepalives_idle; struct TYPE_8__* keepalives; struct TYPE_8__* channel_binding; struct TYPE_8__* pgpassfile; struct TYPE_8__* pgpass; struct TYPE_8__* pguser; struct TYPE_8__* replication; struct TYPE_8__* dbName; struct TYPE_8__* fbappname; struct TYPE_8__* appname; struct TYPE_8__* pgoptions; struct TYPE_8__* pgtcp_user_timeout; struct TYPE_8__* connect_timeout; struct TYPE_8__* pgtty; struct TYPE_8__* pgport; struct TYPE_8__* pghostaddr; struct TYPE_8__* pghost; struct TYPE_8__* events; struct TYPE_8__* client_encoding_initial; struct TYPE_8__* connhost; struct TYPE_8__* password; struct TYPE_8__* port; struct TYPE_8__* hostaddr; struct TYPE_8__* host; struct TYPE_8__* name; int passThrough; int (* proc ) (int ,TYPE_2__*,int ) ;} ;
typedef TYPE_1__ PGconn ;
typedef TYPE_2__ PGEventConnDestroy ;
typedef int OM_uint32 ;


 int GSS_C_NO_BUFFER ;
 scalar_t__ GSS_C_NO_CREDENTIAL ;
 int PGEVT_CONNDESTROY ;
 int WSACleanup () ;
 int explicit_bzero (TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int gss_delete_sec_context (int *,int **,int ) ;
 int gss_release_cred (int *,scalar_t__*) ;
 int strlen (TYPE_1__*) ;
 int stub1 (int ,TYPE_2__*,int ) ;
 int termPQExpBuffer (int *) ;

__attribute__((used)) static void
freePGconn(PGconn *conn)
{
 int i;


 for (i = 0; i < conn->nEvents; i++)
 {
  PGEventConnDestroy evt;

  evt.conn = conn;
  (void) conn->events[i].proc(PGEVT_CONNDESTROY, &evt,
         conn->events[i].passThrough);
  free(conn->events[i].name);
 }


 if (conn->connhost != ((void*)0))
 {
  for (i = 0; i < conn->nconnhost; ++i)
  {
   if (conn->connhost[i].host != ((void*)0))
    free(conn->connhost[i].host);
   if (conn->connhost[i].hostaddr != ((void*)0))
    free(conn->connhost[i].hostaddr);
   if (conn->connhost[i].port != ((void*)0))
    free(conn->connhost[i].port);
   if (conn->connhost[i].password != ((void*)0))
   {
    explicit_bzero(conn->connhost[i].password, strlen(conn->connhost[i].password));
    free(conn->connhost[i].password);
   }
  }
  free(conn->connhost);
 }

 if (conn->client_encoding_initial)
  free(conn->client_encoding_initial);
 if (conn->events)
  free(conn->events);
 if (conn->pghost)
  free(conn->pghost);
 if (conn->pghostaddr)
  free(conn->pghostaddr);
 if (conn->pgport)
  free(conn->pgport);
 if (conn->pgtty)
  free(conn->pgtty);
 if (conn->connect_timeout)
  free(conn->connect_timeout);
 if (conn->pgtcp_user_timeout)
  free(conn->pgtcp_user_timeout);
 if (conn->pgoptions)
  free(conn->pgoptions);
 if (conn->appname)
  free(conn->appname);
 if (conn->fbappname)
  free(conn->fbappname);
 if (conn->dbName)
  free(conn->dbName);
 if (conn->replication)
  free(conn->replication);
 if (conn->pguser)
  free(conn->pguser);
 if (conn->pgpass)
 {
  explicit_bzero(conn->pgpass, strlen(conn->pgpass));
  free(conn->pgpass);
 }
 if (conn->pgpassfile)
  free(conn->pgpassfile);
 if (conn->channel_binding)
  free(conn->channel_binding);
 if (conn->keepalives)
  free(conn->keepalives);
 if (conn->keepalives_idle)
  free(conn->keepalives_idle);
 if (conn->keepalives_interval)
  free(conn->keepalives_interval);
 if (conn->keepalives_count)
  free(conn->keepalives_count);
 if (conn->sslmode)
  free(conn->sslmode);
 if (conn->sslcert)
  free(conn->sslcert);
 if (conn->sslkey)
  free(conn->sslkey);
 if (conn->sslrootcert)
  free(conn->sslrootcert);
 if (conn->sslcrl)
  free(conn->sslcrl);
 if (conn->sslcompression)
  free(conn->sslcompression);
 if (conn->requirepeer)
  free(conn->requirepeer);
 if (conn->connip)
  free(conn->connip);
 if (conn->gssencmode)
  free(conn->gssencmode);
 if (conn->last_query)
  free(conn->last_query);
 if (conn->write_err_msg)
  free(conn->write_err_msg);
 if (conn->inBuffer)
  free(conn->inBuffer);
 if (conn->outBuffer)
  free(conn->outBuffer);
 if (conn->rowBuf)
  free(conn->rowBuf);
 if (conn->target_session_attrs)
  free(conn->target_session_attrs);
 termPQExpBuffer(&conn->errorMessage);
 termPQExpBuffer(&conn->workBuffer);

 free(conn);




}
