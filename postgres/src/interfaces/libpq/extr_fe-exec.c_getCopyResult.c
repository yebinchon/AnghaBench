
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ status; TYPE_1__* result; int asyncStatus; } ;
struct TYPE_7__ {scalar_t__ resultStatus; } ;
typedef int PGresult ;
typedef TYPE_2__ PGconn ;
typedef scalar_t__ ExecStatusType ;


 scalar_t__ CONNECTION_OK ;
 int PGASYNC_IDLE ;
 int * PQmakeEmptyPGresult (TYPE_2__*,scalar_t__) ;
 int * pqPrepareAsyncResult (TYPE_2__*) ;
 int pqSaveErrorResult (TYPE_2__*) ;

__attribute__((used)) static PGresult *
getCopyResult(PGconn *conn, ExecStatusType copytype)
{
 if (conn->status != CONNECTION_OK)
 {
  pqSaveErrorResult(conn);
  conn->asyncStatus = PGASYNC_IDLE;
  return pqPrepareAsyncResult(conn);
 }


 if (conn->result && conn->result->resultStatus == copytype)
  return pqPrepareAsyncResult(conn);


 return PQmakeEmptyPGresult(conn, copytype);
}
