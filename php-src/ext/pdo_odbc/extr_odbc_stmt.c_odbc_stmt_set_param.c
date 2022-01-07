
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_5__ {char* what; int last_state; int last_err_msg; } ;
struct TYPE_7__ {TYPE_1__ einfo; int assume_utf8; int stmt; } ;
typedef TYPE_3__ pdo_odbc_stmt ;
typedef int SQLRETURN ;




 int SQLSetCursorName (int ,int ,int ) ;
 int SQL_SUCCESS ;
 int SQL_SUCCESS_WITH_INFO ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int convert_to_string (int *) ;
 int pdo_odbc_stmt_error (char*) ;
 int strcpy (int ,char*) ;
 int zval_is_true (int *) ;

__attribute__((used)) static int odbc_stmt_set_param(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
 SQLRETURN rc;
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

 switch (attr) {
  case 129:
   convert_to_string(val);
   rc = SQLSetCursorName(S->stmt, Z_STRVAL_P(val), Z_STRLEN_P(val));

   if (rc == SQL_SUCCESS || rc == SQL_SUCCESS_WITH_INFO) {
    return 1;
   }
   pdo_odbc_stmt_error("SQLSetCursorName");
   return 0;

  case 128:
   S->assume_utf8 = zval_is_true(val);
   return 0;
  default:
   strcpy(S->einfo.last_err_msg, "Unknown Attribute");
   S->einfo.what = "setAttribute";
   strcpy(S->einfo.last_state, "IM001");
   return -1;
 }
}
