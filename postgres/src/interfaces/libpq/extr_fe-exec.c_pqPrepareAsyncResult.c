
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next_result; int * result; int errorMessage; } ;
typedef int PGresult ;
typedef TYPE_1__ PGconn ;


 int PGRES_FATAL_ERROR ;
 int * PQmakeEmptyPGresult (TYPE_1__*,int ) ;
 int PQresultErrorMessage (int *) ;
 int appendPQExpBufferStr (int *,int ) ;
 int resetPQExpBuffer (int *) ;

PGresult *
pqPrepareAsyncResult(PGconn *conn)
{
 PGresult *res;






 res = conn->result;
 if (!res)
  res = PQmakeEmptyPGresult(conn, PGRES_FATAL_ERROR);
 else
 {




  resetPQExpBuffer(&conn->errorMessage);
  appendPQExpBufferStr(&conn->errorMessage,
        PQresultErrorMessage(res));
 }







 conn->result = conn->next_result;
 conn->next_result = ((void*)0);

 return res;
}
