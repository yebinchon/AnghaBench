
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int ERRCODE_CONNECTION_FAILURE ;
 int MAKE_SQLSTATE (char,char,char,char,char) ;
 int PG_DIAG_CONTEXT ;
 int PG_DIAG_MESSAGE_DETAIL ;
 int PG_DIAG_MESSAGE_HINT ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SQLSTATE ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 char* PQresultErrorField (int *,int ) ;
 int ereport (int,int ) ;
 int errcode (int) ;
 int errcontext (char*,char const*) ;
 int errdetail_internal (char*,char*) ;
 int errhint (char*,char*) ;
 int errmsg (char*) ;
 int errmsg_internal (char*,char*) ;
 char* pchomp (int ) ;

void
pgfdw_report_error(int elevel, PGresult *res, PGconn *conn,
       bool clear, const char *sql)
{

 PG_TRY();
 {
  char *diag_sqlstate = PQresultErrorField(res, PG_DIAG_SQLSTATE);
  char *message_primary = PQresultErrorField(res, PG_DIAG_MESSAGE_PRIMARY);
  char *message_detail = PQresultErrorField(res, PG_DIAG_MESSAGE_DETAIL);
  char *message_hint = PQresultErrorField(res, PG_DIAG_MESSAGE_HINT);
  char *message_context = PQresultErrorField(res, PG_DIAG_CONTEXT);
  int sqlstate;

  if (diag_sqlstate)
   sqlstate = MAKE_SQLSTATE(diag_sqlstate[0],
          diag_sqlstate[1],
          diag_sqlstate[2],
          diag_sqlstate[3],
          diag_sqlstate[4]);
  else
   sqlstate = ERRCODE_CONNECTION_FAILURE;






  if (message_primary == ((void*)0))
   message_primary = pchomp(PQerrorMessage(conn));

  ereport(elevel,
    (errcode(sqlstate),
     message_primary ? errmsg_internal("%s", message_primary) :
     errmsg("could not obtain message string for remote error"),
     message_detail ? errdetail_internal("%s", message_detail) : 0,
     message_hint ? errhint("%s", message_hint) : 0,
     message_context ? errcontext("%s", message_context) : 0,
     sql ? errcontext("remote SQL command: %s", sql) : 0));
 }
 PG_FINALLY();
 {
  if (clear)
   PQclear(res);
 }
 PG_END_TRY();
}
