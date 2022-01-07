
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_4__ {int link; int err; } ;
typedef TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef scalar_t__ RETCODE ;
typedef int BYTE ;


 int DBCOUNT (int ) ;
 scalar_t__ FAIL ;
 int dbcanquery (int ) ;
 scalar_t__ dbcmd (int ,char const*) ;
 scalar_t__ dbnextrow (int ) ;
 scalar_t__ dbnumcols (int ) ;
 scalar_t__ dbresults (int ) ;
 int dbsetuserdata (int ,int *) ;
 scalar_t__ dbsqlexec (int ) ;

__attribute__((used)) static zend_long dblib_handle_doer(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;
 RETCODE ret, resret;

 dbsetuserdata(H->link, (BYTE*)&H->err);

 if (FAIL == dbcmd(H->link, sql)) {
  return -1;
 }

 if (FAIL == dbsqlexec(H->link)) {
  return -1;
 }

 resret = dbresults(H->link);

 if (resret == FAIL) {
  return -1;
 }

 ret = dbnextrow(H->link);
 if (ret == FAIL) {
  return -1;
 }

 if (dbnumcols(H->link) <= 0) {
  return DBCOUNT(H->link);
 }


 dbcanquery(H->link);

 return DBCOUNT(H->link);
}
