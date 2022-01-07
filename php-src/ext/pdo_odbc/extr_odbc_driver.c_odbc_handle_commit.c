
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbc; } ;
typedef TYPE_1__ pdo_odbc_db_handle ;
struct TYPE_5__ {scalar_t__ auto_commit; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int SQLPOINTER ;
typedef scalar_t__ RETCODE ;


 scalar_t__ SQLEndTran (int ,int ,int ) ;
 scalar_t__ SQLSetConnectAttr (int ,int ,int ,int ) ;
 int SQL_ATTR_AUTOCOMMIT ;
 scalar_t__ SQL_AUTOCOMMIT_ON ;
 int SQL_COMMIT ;
 int SQL_HANDLE_DBC ;
 int SQL_IS_INTEGER ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int pdo_odbc_drv_error (char*) ;

__attribute__((used)) static int odbc_handle_commit(pdo_dbh_t *dbh)
{
 pdo_odbc_db_handle *H = (pdo_odbc_db_handle *)dbh->driver_data;
 RETCODE rc;

 rc = SQLEndTran(SQL_HANDLE_DBC, H->dbc, SQL_COMMIT);

 if (rc != SQL_SUCCESS) {
  pdo_odbc_drv_error("SQLEndTran: Commit");

  if (rc != SQL_SUCCESS_WITH_INFO) {
   return 0;
  }
 }

 if (dbh->auto_commit) {

  rc = SQLSetConnectAttr(H->dbc, SQL_ATTR_AUTOCOMMIT, (SQLPOINTER)SQL_AUTOCOMMIT_ON, SQL_IS_INTEGER);
  if (rc != SQL_SUCCESS) {
   pdo_odbc_drv_error("SQLSetConnectAttr AUTOCOMMIT = ON");
   return 0;
  }
 }
 return 1;
}
