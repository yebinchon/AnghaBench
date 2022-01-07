
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WSADATA ;
struct TYPE_6__ {int noticeProc; int noticeRec; } ;
struct TYPE_7__ {int options_valid; int nonblocking; int std_strings; int try_gss; int inBufSize; char* inBuffer; int outBufSize; char* outBuffer; int rowBufLen; int workBuffer; int errorMessage; int * rowBuf; int sock; int show_context; int verbosity; int client_encoding; int setenv_state; int xactStatus; int asyncStatus; int status; TYPE_1__ noticeHooks; } ;
typedef int PGdataValue ;
typedef TYPE_2__ PGconn ;


 int CONNECTION_BAD ;
 int MAKEWORD (int,int) ;
 int MemSet (TYPE_2__*,int ,int) ;
 int PGASYNC_IDLE ;
 int PGINVALID_SOCKET ;
 int PG_SQL_ASCII ;
 int PQERRORS_DEFAULT ;
 scalar_t__ PQExpBufferBroken (int *) ;
 int PQSHOW_CONTEXT_ERRORS ;
 int PQTRANS_IDLE ;
 int SETENV_STATE_IDLE ;
 int WSACleanup () ;
 int WSASetLastError (int ) ;
 scalar_t__ WSAStartup (int ,int *) ;
 int defaultNoticeProcessor ;
 int defaultNoticeReceiver ;
 int freePGconn (TYPE_2__*) ;
 int initPQExpBuffer (int *) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static PGconn *
makeEmptyPGconn(void)
{
 PGconn *conn;
 conn = (PGconn *) malloc(sizeof(PGconn));
 if (conn == ((void*)0))
 {



  return conn;
 }


 MemSet(conn, 0, sizeof(PGconn));


 conn->noticeHooks.noticeRec = defaultNoticeReceiver;
 conn->noticeHooks.noticeProc = defaultNoticeProcessor;

 conn->status = CONNECTION_BAD;
 conn->asyncStatus = PGASYNC_IDLE;
 conn->xactStatus = PQTRANS_IDLE;
 conn->options_valid = 0;
 conn->nonblocking = 0;
 conn->setenv_state = SETENV_STATE_IDLE;
 conn->client_encoding = PG_SQL_ASCII;
 conn->std_strings = 0;
 conn->verbosity = PQERRORS_DEFAULT;
 conn->show_context = PQSHOW_CONTEXT_ERRORS;
 conn->sock = PGINVALID_SOCKET;
 conn->inBufSize = 16 * 1024;
 conn->inBuffer = (char *) malloc(conn->inBufSize);
 conn->outBufSize = 16 * 1024;
 conn->outBuffer = (char *) malloc(conn->outBufSize);
 conn->rowBufLen = 32;
 conn->rowBuf = (PGdataValue *) malloc(conn->rowBufLen * sizeof(PGdataValue));
 initPQExpBuffer(&conn->errorMessage);
 initPQExpBuffer(&conn->workBuffer);

 if (conn->inBuffer == ((void*)0) ||
  conn->outBuffer == ((void*)0) ||
  conn->rowBuf == ((void*)0) ||
  PQExpBufferBroken(&conn->errorMessage) ||
  PQExpBufferBroken(&conn->workBuffer))
 {

  freePGconn(conn);
  conn = ((void*)0);
 }

 return conn;
}
