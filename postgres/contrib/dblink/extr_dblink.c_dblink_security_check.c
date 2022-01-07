
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int remoteConn ;
typedef int PGconn ;


 int ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED ;
 int ERROR ;
 int PQconnectionUsedPassword (int *) ;
 int PQfinish (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int pfree (int *) ;
 int superuser () ;

__attribute__((used)) static void
dblink_security_check(PGconn *conn, remoteConn *rconn)
{
 if (!superuser())
 {
  if (!PQconnectionUsedPassword(conn))
  {
   PQfinish(conn);
   if (rconn)
    pfree(rconn);

   ereport(ERROR,
     (errcode(ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED),
      errmsg("password is required"),
      errdetail("Non-superuser cannot connect if the server does not request a password."),
      errhint("Target server's authentication method must be changed.")));
  }
 }
}
