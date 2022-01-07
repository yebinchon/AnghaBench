
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int server; } ;
typedef TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int PGresult ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char const*) ;
 scalar_t__ PQresultStatus (int *) ;
 int pdo_pgsql_error (TYPE_2__*,scalar_t__,int ) ;
 int pdo_pgsql_sqlstate (int *) ;

__attribute__((used)) static int pdo_pgsql_transaction_cmd(const char *cmd, pdo_dbh_t *dbh)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 PGresult *res;
 int ret = 1;

 res = PQexec(H->server, cmd);

 if (PQresultStatus(res) != PGRES_COMMAND_OK) {
  pdo_pgsql_error(dbh, PQresultStatus(res), pdo_pgsql_sqlstate(res));
  ret = 0;
 }

 PQclear(res);
 return ret;
}
