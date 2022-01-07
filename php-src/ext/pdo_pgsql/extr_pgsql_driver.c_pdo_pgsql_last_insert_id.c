
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
typedef scalar_t__ ExecStatusType ;


 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 int * PQexecParams (int ,char*,int,int *,char const**,int *,int *,int ) ;
 size_t PQgetlength (int *,int ,int ) ;
 scalar_t__ PQgetvalue (int *,int ,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 char* estrdup (char*) ;
 int pdo_pgsql_error (TYPE_2__*,scalar_t__,int ) ;
 int pdo_pgsql_sqlstate (int *) ;

__attribute__((used)) static char *pdo_pgsql_last_insert_id(pdo_dbh_t *dbh, const char *name, size_t *len)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 char *id = ((void*)0);
 PGresult *res;
 ExecStatusType status;

 if (name == ((void*)0)) {
  res = PQexec(H->server, "SELECT LASTVAL()");
 } else {
  const char *q[1];
  q[0] = name;

  res = PQexecParams(H->server, "SELECT CURRVAL($1)", 1, ((void*)0), q, ((void*)0), ((void*)0), 0);
 }
 status = PQresultStatus(res);

 if (res && (status == PGRES_TUPLES_OK)) {
  id = estrdup((char *)PQgetvalue(res, 0, 0));
  *len = PQgetlength(res, 0, 0);
 } else {
  pdo_pgsql_error(dbh, status, pdo_pgsql_sqlstate(res));
 }

 if (res) {
  PQclear(res);
 }

 return id;
}
