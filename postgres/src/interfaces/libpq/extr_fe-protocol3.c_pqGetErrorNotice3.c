
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {int errorMessage; TYPE_3__* result; int show_context; int verbosity; void* last_query; int last_sqlstate; } ;
struct TYPE_22__ {int noticeRecArg; int (* noticeRec ) (int ,TYPE_3__*) ;} ;
struct TYPE_24__ {TYPE_1__ noticeHooks; void* errMsg; void* errQuery; int resultStatus; } ;
struct TYPE_23__ {void* data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ PGresult ;
typedef TYPE_4__ PGconn ;


 int EOF ;
 int PGRES_EMPTY_QUERY ;
 int PGRES_FATAL_ERROR ;
 int PGRES_NONFATAL_ERROR ;
 char PG_DIAG_SQLSTATE ;
 char PG_DIAG_STATEMENT_POSITION ;
 scalar_t__ PQExpBufferDataBroken (TYPE_2__) ;
 int PQclear (TYPE_3__*) ;
 TYPE_3__* PQmakeEmptyPGresult (TYPE_4__*,int ) ;
 int appendPQExpBufferStr (int *,void*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int libpq_gettext (char*) ;
 int pqBuildErrorMessage3 (TYPE_2__*,TYPE_3__*,int ,int ) ;
 int pqClearAsyncResult (TYPE_4__*) ;
 scalar_t__ pqGetc (char*,TYPE_4__*) ;
 scalar_t__ pqGets (TYPE_2__*,TYPE_4__*) ;
 void* pqResultStrdup (TYPE_3__*,void*) ;
 int pqSaveMessageField (TYPE_3__*,char,void*) ;
 int printfPQExpBuffer (int *,int ) ;
 int resetPQExpBuffer (TYPE_2__*) ;
 int strlcpy (int ,void*,int) ;
 int stub1 (int ,TYPE_3__*) ;
 int termPQExpBuffer (TYPE_2__*) ;

int
pqGetErrorNotice3(PGconn *conn, bool isError)
{
 PGresult *res = ((void*)0);
 bool have_position = 0;
 PQExpBufferData workBuf;
 char id;






 if (isError)
  pqClearAsyncResult(conn);







 initPQExpBuffer(&workBuf);
 res = PQmakeEmptyPGresult(conn, PGRES_EMPTY_QUERY);
 if (res)
  res->resultStatus = isError ? PGRES_FATAL_ERROR : PGRES_NONFATAL_ERROR;







 for (;;)
 {
  if (pqGetc(&id, conn))
   goto fail;
  if (id == '\0')
   break;
  if (pqGets(&workBuf, conn))
   goto fail;
  pqSaveMessageField(res, id, workBuf.data);
  if (id == PG_DIAG_SQLSTATE)
   strlcpy(conn->last_sqlstate, workBuf.data,
     sizeof(conn->last_sqlstate));
  else if (id == PG_DIAG_STATEMENT_POSITION)
   have_position = 1;
 }






 if (have_position && conn->last_query && res)
  res->errQuery = pqResultStrdup(res, conn->last_query);




 resetPQExpBuffer(&workBuf);
 pqBuildErrorMessage3(&workBuf, res, conn->verbosity, conn->show_context);




 if (isError)
 {
  if (res)
   res->errMsg = pqResultStrdup(res, workBuf.data);
  pqClearAsyncResult(conn);
  conn->result = res;
  if (PQExpBufferDataBroken(workBuf))
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("out of memory"));
  else
   appendPQExpBufferStr(&conn->errorMessage, workBuf.data);
 }
 else
 {

  if (res)
  {

   res->errMsg = workBuf.data;
   if (res->noticeHooks.noticeRec != ((void*)0))
    res->noticeHooks.noticeRec(res->noticeHooks.noticeRecArg, res);
   PQclear(res);
  }
 }

 termPQExpBuffer(&workBuf);
 return 0;

fail:
 PQclear(res);
 termPQExpBuffer(&workBuf);
 return EOF;
}
