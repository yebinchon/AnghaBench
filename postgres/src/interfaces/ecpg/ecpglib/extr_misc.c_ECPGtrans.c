
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {char* name; scalar_t__ connection; int autocommit; } ;
typedef int PGresult ;


 int ECPG_COMPAT_PGSQL ;
 scalar_t__ PQTRANS_IDLE ;
 int PQclear (int *) ;
 int * PQexec (scalar_t__,char const*) ;
 scalar_t__ PQtransactionStatus (scalar_t__) ;
 int ecpg_check_PQresult (int *,int,scalar_t__,int ) ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int ecpg_log (char*,int,char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

bool
ECPGtrans(int lineno, const char *connection_name, const char *transaction)
{
 PGresult *res;
 struct connection *con = ecpg_get_connection(connection_name);

 if (!ecpg_init(con, connection_name, lineno))
  return 0;

 ecpg_log("ECPGtrans on line %d: action \"%s\"; connection \"%s\"\n", lineno, transaction, con ? con->name : "null");


 if (con && con->connection)
 {







  if (PQtransactionStatus(con->connection) == PQTRANS_IDLE &&
   !con->autocommit &&
   strncmp(transaction, "begin", 5) != 0 &&
   strncmp(transaction, "start", 5) != 0 &&
   strncmp(transaction, "commit prepared", 15) != 0 &&
   strncmp(transaction, "rollback prepared", 17) != 0)
  {
   res = PQexec(con->connection, "begin transaction");
   if (!ecpg_check_PQresult(res, lineno, con->connection, ECPG_COMPAT_PGSQL))
    return 0;
   PQclear(res);
  }

  res = PQexec(con->connection, transaction);
  if (!ecpg_check_PQresult(res, lineno, con->connection, ECPG_COMPAT_PGSQL))
   return 0;
  PQclear(res);
 }

 return 1;
}
