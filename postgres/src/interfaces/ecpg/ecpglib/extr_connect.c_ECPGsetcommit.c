
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int autocommit; int connection; int name; } ;
typedef int PGresult ;


 int ECPG_COMPAT_PGSQL ;
 scalar_t__ PQTRANS_IDLE ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 scalar_t__ PQtransactionStatus (int ) ;
 int ecpg_check_PQresult (int *,int,int ,int ) ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int ecpg_log (char*,int,char const*,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

bool
ECPGsetcommit(int lineno, const char *mode, const char *connection_name)
{
 struct connection *con = ecpg_get_connection(connection_name);
 PGresult *results;

 if (!ecpg_init(con, connection_name, lineno))
  return 0;

 ecpg_log("ECPGsetcommit on line %d: action \"%s\"; connection \"%s\"\n", lineno, mode, con->name);

 if (con->autocommit && strncmp(mode, "off", strlen("off")) == 0)
 {
  if (PQtransactionStatus(con->connection) == PQTRANS_IDLE)
  {
   results = PQexec(con->connection, "begin transaction");
   if (!ecpg_check_PQresult(results, lineno, con->connection, ECPG_COMPAT_PGSQL))
    return 0;
   PQclear(results);
  }
  con->autocommit = 0;
 }
 else if (!con->autocommit && strncmp(mode, "on", strlen("on")) == 0)
 {
  if (PQtransactionStatus(con->connection) != PQTRANS_IDLE)
  {
   results = PQexec(con->connection, "commit");
   if (!ecpg_check_PQresult(results, lineno, con->connection, ECPG_COMPAT_PGSQL))
    return 0;
   PQclear(results);
  }
  con->autocommit = 1;
 }

 return 1;
}
