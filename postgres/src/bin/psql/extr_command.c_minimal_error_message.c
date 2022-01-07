
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;


 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SEVERITY ;
 char* PQresultErrorField (int *,int ) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,int ) ;
 int printfPQExpBuffer (TYPE_1__*,char*,...) ;

__attribute__((used)) static void
minimal_error_message(PGresult *res)
{
 PQExpBuffer msg;
 const char *fld;

 msg = createPQExpBuffer();

 fld = PQresultErrorField(res, PG_DIAG_SEVERITY);
 if (fld)
  printfPQExpBuffer(msg, "%s:  ", fld);
 else
  printfPQExpBuffer(msg, "ERROR:  ");
 fld = PQresultErrorField(res, PG_DIAG_MESSAGE_PRIMARY);
 if (fld)
  appendPQExpBufferStr(msg, fld);
 else
  appendPQExpBufferStr(msg, "(not available)");
 appendPQExpBufferChar(msg, '\n');

 pg_log_error("%s", msg->data);

 destroyPQExpBuffer(msg);
}
