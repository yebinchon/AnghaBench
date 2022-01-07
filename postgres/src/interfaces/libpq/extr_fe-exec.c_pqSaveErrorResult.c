
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ resultStatus; int * errMsg; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_9__ {TYPE_1__ errorMessage; TYPE_5__* result; } ;
typedef TYPE_2__ PGconn ;


 scalar_t__ PGRES_FATAL_ERROR ;
 TYPE_5__* PQmakeEmptyPGresult (TYPE_2__*,scalar_t__) ;
 int pqCatenateResultError (TYPE_5__*,int ) ;
 int pqClearAsyncResult (TYPE_2__*) ;

void
pqSaveErrorResult(PGconn *conn)
{




 if (conn->result == ((void*)0) ||
  conn->result->resultStatus != PGRES_FATAL_ERROR ||
  conn->result->errMsg == ((void*)0))
 {
  pqClearAsyncResult(conn);
  conn->result = PQmakeEmptyPGresult(conn, PGRES_FATAL_ERROR);
 }
 else
 {

  pqCatenateResultError(conn->result, conn->errorMessage.data);
 }
}
