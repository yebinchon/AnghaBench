
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int error_code; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {char* last_state; char* last_err_msg; char const* file; int line; char* what; int last_error; } ;
struct TYPE_9__ {scalar_t__ stmt; TYPE_3__ einfo; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
typedef TYPE_3__ pdo_odbc_errinfo ;
struct TYPE_11__ {scalar_t__ env; scalar_t__ dbc; TYPE_3__ einfo; } ;
typedef TYPE_4__ pdo_odbc_db_handle ;
typedef int pdo_error_type ;
struct TYPE_12__ {int methods; int error_code; scalar_t__ driver_data; } ;
typedef TYPE_5__ pdo_dbh_t ;
typedef int discard_buf ;
typedef size_t SQLSMALLINT ;
typedef scalar_t__ SQLRETURN ;
typedef int SQLINTEGER ;
typedef scalar_t__ SQLHANDLE ;
typedef scalar_t__ PDO_ODBC_HSTMT ;


 scalar_t__ SQLGetDiagRec (size_t,scalar_t__,int ,char*,int *,char*,int,size_t*) ;
 size_t SQL_HANDLE_DBC ;
 size_t SQL_HANDLE_ENV ;
 size_t SQL_HANDLE_STMT ;
 scalar_t__ SQL_NULL_HSTMT ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int php_pdo_get_exception () ;
 int strcpy (int ,char*) ;
 int zend_throw_exception_ex (int ,int ,char*,int ,char*,int ,char*) ;

void pdo_odbc_error(pdo_dbh_t *dbh, pdo_stmt_t *stmt, PDO_ODBC_HSTMT statement, char *what, const char *file, int line)
{
 SQLRETURN rc;
 SQLSMALLINT errmsgsize = 0;
 SQLHANDLE eh;
 SQLSMALLINT htype, recno = 1;
 pdo_odbc_db_handle *H = (pdo_odbc_db_handle*)dbh->driver_data;
 pdo_odbc_errinfo *einfo = &H->einfo;
 pdo_odbc_stmt *S = ((void*)0);
 pdo_error_type *pdo_err = &dbh->error_code;

 if (stmt) {
  S = (pdo_odbc_stmt*)stmt->driver_data;

  einfo = &S->einfo;
  pdo_err = &stmt->error_code;
 }

 if (statement == SQL_NULL_HSTMT && S) {
  statement = S->stmt;
 }

 if (statement) {
  htype = SQL_HANDLE_STMT;
  eh = statement;
 } else if (H->dbc) {
  htype = SQL_HANDLE_DBC;
  eh = H->dbc;
 } else {
  htype = SQL_HANDLE_ENV;
  eh = H->env;
 }

 rc = SQLGetDiagRec(htype, eh, recno++, einfo->last_state, &einfo->last_error,
   einfo->last_err_msg, sizeof(einfo->last_err_msg)-1, &errmsgsize);

 if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
  errmsgsize = 0;
 }

 einfo->last_err_msg[errmsgsize] = '\0';
 einfo->file = file;
 einfo->line = line;
 einfo->what = what;

 strcpy(*pdo_err, einfo->last_state);

 if (!dbh->methods) {
  zend_throw_exception_ex(php_pdo_get_exception(), einfo->last_error, "SQLSTATE[%s] %s: %d %s",
    *pdo_err, what, einfo->last_error, einfo->last_err_msg);
 }






 while (rc == SQL_SUCCESS || rc == SQL_SUCCESS_WITH_INFO) {
  char discard_state[6];
  char discard_buf[1024];
  SQLINTEGER code;
  rc = SQLGetDiagRec(htype, eh, recno++, discard_state, &code,
    discard_buf, sizeof(discard_buf)-1, &errmsgsize);
 }

}
