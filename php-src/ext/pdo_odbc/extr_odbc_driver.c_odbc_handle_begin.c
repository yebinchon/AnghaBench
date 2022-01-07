
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbc; } ;
typedef TYPE_1__ pdo_odbc_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; scalar_t__ auto_commit; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int SQLPOINTER ;
typedef scalar_t__ RETCODE ;


 scalar_t__ SQLSetConnectAttr (int ,int ,int ,int ) ;
 int SQL_ATTR_AUTOCOMMIT ;
 scalar_t__ SQL_AUTOCOMMIT_OFF ;
 int SQL_IS_INTEGER ;
 scalar_t__ SQL_SUCCESS ;
 int pdo_odbc_drv_error (char*) ;

__attribute__((used)) static int odbc_handle_begin(pdo_dbh_t *dbh)
{
 if (dbh->auto_commit) {

  RETCODE rc;
  pdo_odbc_db_handle *H = (pdo_odbc_db_handle *)dbh->driver_data;

  rc = SQLSetConnectAttr(H->dbc, SQL_ATTR_AUTOCOMMIT, (SQLPOINTER)SQL_AUTOCOMMIT_OFF, SQL_IS_INTEGER);
  if (rc != SQL_SUCCESS) {
   pdo_odbc_drv_error("SQLSetConnectAttr AUTOCOMMIT = OFF");
   return 0;
  }
 }
 return 1;
}
