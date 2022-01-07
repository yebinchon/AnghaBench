
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* gssencmode; int try_gss; int whichhost; int try_next_addr; int try_next_host; int status; int errorMessage; scalar_t__ outCount; scalar_t__ inEnd; scalar_t__ inCursor; scalar_t__ inStart; int options_valid; } ;
typedef TYPE_1__ PGconn ;


 int CONNECTION_BAD ;
 int CONNECTION_NEEDED ;
 scalar_t__ PGRES_POLLING_WRITING ;
 scalar_t__ PQconnectPoll (TYPE_1__*) ;
 int pg_link_canary_is_frontend () ;
 int pqDropConnection (TYPE_1__*,int) ;
 int printfPQExpBuffer (int *,char*) ;
 int resetPQExpBuffer (int *) ;

__attribute__((used)) static int
connectDBStart(PGconn *conn)
{
 if (!conn)
  return 0;

 if (!conn->options_valid)
  goto connect_errReturn;







 if (!pg_link_canary_is_frontend())
 {
  printfPQExpBuffer(&conn->errorMessage,
        "libpq is incorrectly linked to backend functions\n");
  goto connect_errReturn;
 }


 conn->inStart = conn->inCursor = conn->inEnd = 0;
 conn->outCount = 0;







 resetPQExpBuffer(&conn->errorMessage);
 conn->whichhost = -1;
 conn->try_next_addr = 0;
 conn->try_next_host = 1;
 conn->status = CONNECTION_NEEDED;
 if (PQconnectPoll(conn) == PGRES_POLLING_WRITING)
  return 1;

connect_errReturn:






 pqDropConnection(conn, 1);
 conn->status = CONNECTION_BAD;
 return 0;
}
