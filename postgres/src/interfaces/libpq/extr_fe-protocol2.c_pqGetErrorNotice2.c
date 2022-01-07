
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ xactStatus; int errorMessage; TYPE_3__* result; } ;
struct TYPE_18__ {int noticeRecArg; int (* noticeRec ) (int ,TYPE_3__*) ;} ;
struct TYPE_20__ {TYPE_1__ noticeHooks; int errMsg; int resultStatus; } ;
struct TYPE_19__ {char* data; int len; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ PGresult ;
typedef TYPE_4__ PGconn ;


 int EOF ;
 int PGRES_EMPTY_QUERY ;
 int PGRES_FATAL_ERROR ;
 int PGRES_NONFATAL_ERROR ;
 int PG_DIAG_MESSAGE_DETAIL ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SEVERITY ;
 int PQExpBufferDataBroken (TYPE_2__) ;
 scalar_t__ PQTRANS_INERROR ;
 scalar_t__ PQTRANS_INTRANS ;
 int PQclear (TYPE_3__*) ;
 TYPE_3__* PQmakeEmptyPGresult (TYPE_4__*,int ) ;
 int appendPQExpBufferStr (int *,int ) ;
 int initPQExpBuffer (TYPE_2__*) ;
 scalar_t__ isspace (unsigned char) ;
 int libpq_gettext (char*) ;
 int pqClearAsyncResult (TYPE_4__*) ;
 scalar_t__ pqGets (TYPE_2__*,TYPE_4__*) ;
 int pqResultStrdup (TYPE_3__*,char*) ;
 int pqSaveMessageField (TYPE_3__*,int ,char*) ;
 int printfPQExpBuffer (int *,int ) ;
 int resetPQExpBuffer (int *) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 int stub1 (int ,TYPE_3__*) ;
 int termPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static int
pqGetErrorNotice2(PGconn *conn, bool isError)
{
 PGresult *res = ((void*)0);
 PQExpBufferData workBuf;
 char *startp;
 char *splitp;






 if (isError)
  pqClearAsyncResult(conn);






 initPQExpBuffer(&workBuf);
 if (pqGets(&workBuf, conn))
  goto failure;
 res = PQmakeEmptyPGresult(conn, PGRES_EMPTY_QUERY);
 if (res)
 {
  res->resultStatus = isError ? PGRES_FATAL_ERROR : PGRES_NONFATAL_ERROR;
  res->errMsg = pqResultStrdup(res, workBuf.data);
 }
 while (workBuf.len > 0 && workBuf.data[workBuf.len - 1] == '\n')
  workBuf.data[--workBuf.len] = '\0';
 splitp = strstr(workBuf.data, ":  ");
 if (splitp)
 {

  *splitp = '\0';
  pqSaveMessageField(res, PG_DIAG_SEVERITY, workBuf.data);
  startp = splitp + 3;
 }
 else
 {

  startp = workBuf.data;
 }
 splitp = strchr(startp, '\n');
 if (splitp)
 {

  *splitp++ = '\0';
  pqSaveMessageField(res, PG_DIAG_MESSAGE_PRIMARY, startp);

  while (*splitp && isspace((unsigned char) *splitp))
   splitp++;
  pqSaveMessageField(res, PG_DIAG_MESSAGE_DETAIL, splitp);
 }
 else
 {

  pqSaveMessageField(res, PG_DIAG_MESSAGE_PRIMARY, startp);
 }






 if (isError)
 {
  pqClearAsyncResult(conn);
  conn->result = res;
  resetPQExpBuffer(&conn->errorMessage);
  if (res && !PQExpBufferDataBroken(workBuf) && res->errMsg)
   appendPQExpBufferStr(&conn->errorMessage, res->errMsg);
  else
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("out of memory"));
  if (conn->xactStatus == PQTRANS_INTRANS)
   conn->xactStatus = PQTRANS_INERROR;
 }
 else
 {
  if (res)
  {
   if (res->noticeHooks.noticeRec != ((void*)0))
    res->noticeHooks.noticeRec(res->noticeHooks.noticeRecArg, res);
   PQclear(res);
  }
 }

 termPQExpBuffer(&workBuf);
 return 0;

failure:
 if (res)
  PQclear(res);
 termPQExpBuffer(&workBuf);
 return EOF;
}
