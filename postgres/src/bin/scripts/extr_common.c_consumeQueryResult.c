
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int * PQgetResult (int *) ;
 int ResetCancelConn () ;
 int SetCancelConn (int *) ;
 int processQueryResult (int *,int *) ;

bool
consumeQueryResult(PGconn *conn)
{
 bool ok = 1;
 PGresult *result;

 SetCancelConn(conn);
 while ((result = PQgetResult(conn)) != ((void*)0))
 {
  if (!processQueryResult(conn, result))
   ok = 0;
 }
 ResetCancelConn();
 return ok;
}
