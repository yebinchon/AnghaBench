
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int asyncStatus; scalar_t__ last_query; int queryclass; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int PGASYNC_BUSY ;
 int PGQUERY_SIMPLE ;
 int PQsendQueryStart (TYPE_1__*) ;
 int free (scalar_t__) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_1__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_1__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_1__*) ;
 scalar_t__ pqPuts (char const*,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 scalar_t__ strdup (char const*) ;

int
PQsendQuery(PGconn *conn, const char *query)
{
 if (!PQsendQueryStart(conn))
  return 0;


 if (!query)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("command string is a null pointer\n"));
  return 0;
 }


 if (pqPutMsgStart('Q', 0, conn) < 0 ||
  pqPuts(query, conn) < 0 ||
  pqPutMsgEnd(conn) < 0)
 {

  return 0;
 }


 conn->queryclass = PGQUERY_SIMPLE;



 if (conn->last_query)
  free(conn->last_query);
 conn->last_query = strdup(query);





 if (pqFlush(conn) < 0)
 {

  return 0;
 }


 conn->asyncStatus = PGASYNC_BUSY;
 return 1;
}
