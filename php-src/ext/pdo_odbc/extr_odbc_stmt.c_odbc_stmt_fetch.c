
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_4__ {int error_code; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int stmt; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
typedef enum pdo_fetch_orientation { ____Placeholder_pdo_fetch_orientation } pdo_fetch_orientation ;
typedef int SQLSMALLINT ;
typedef scalar_t__ RETCODE ;
 scalar_t__ SQLFetchScroll (int ,int ,int ) ;
 int SQL_FETCH_ABSOLUTE ;
 int SQL_FETCH_FIRST ;
 int SQL_FETCH_LAST ;
 int SQL_FETCH_NEXT ;
 int SQL_FETCH_PRIOR ;
 int SQL_FETCH_RELATIVE ;
 scalar_t__ SQL_NO_DATA ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int pdo_odbc_stmt_error (char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int odbc_stmt_fetch(pdo_stmt_t *stmt,
 enum pdo_fetch_orientation ori, zend_long offset)
{
 RETCODE rc;
 SQLSMALLINT odbcori;
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

 switch (ori) {
  case 130: odbcori = SQL_FETCH_NEXT; break;
  case 129: odbcori = SQL_FETCH_PRIOR; break;
  case 132: odbcori = SQL_FETCH_FIRST; break;
  case 131: odbcori = SQL_FETCH_LAST; break;
  case 133: odbcori = SQL_FETCH_ABSOLUTE; break;
  case 128: odbcori = SQL_FETCH_RELATIVE; break;
  default:
   strcpy(stmt->error_code, "HY106");
   return 0;
 }
 rc = SQLFetchScroll(S->stmt, odbcori, offset);

 if (rc == SQL_SUCCESS) {
  return 1;
 }
 if (rc == SQL_SUCCESS_WITH_INFO) {
  pdo_odbc_stmt_error("SQLFetchScroll");
  return 1;
 }

 if (rc == SQL_NO_DATA) {

  return 0;
 }

 pdo_odbc_stmt_error("SQLFetchScroll");

 return 0;
}
