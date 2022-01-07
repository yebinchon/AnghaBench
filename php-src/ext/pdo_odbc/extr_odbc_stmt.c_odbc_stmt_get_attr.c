
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
typedef int buf ;
typedef int SQLSMALLINT ;
typedef int SQLRETURN ;




 int SQLGetCursorName (int ,char*,int,int *) ;
 int SQL_SUCCESS ;
 int SQL_SUCCESS_WITH_INFO ;
 int ZVAL_BOOL (int *,int) ;
 int ZVAL_STRINGL (int *,char*,int ) ;
 int pdo_odbc_stmt_error (char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int odbc_stmt_get_attr(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
 SQLRETURN rc;
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

 switch (attr) {
  case 129:
  {
   char buf[256];
   SQLSMALLINT len = 0;
   rc = SQLGetCursorName(S->stmt, buf, sizeof(buf), &len);

   if (rc == SQL_SUCCESS || rc == SQL_SUCCESS_WITH_INFO) {
    ZVAL_STRINGL(val, buf, len);
    return 1;
   }
   pdo_odbc_stmt_error("SQLGetCursorName");
   return 0;
  }

  case 128:
   ZVAL_BOOL(val, S->assume_utf8 ? 1 : 0);
   return 0;

  default:
   strcpy(S->einfo.last_err_msg, "Unknown Attribute");
   S->einfo.what = "getAttribute";
   strcpy(S->einfo.last_state, "IM001");
   return -1;
 }
}
