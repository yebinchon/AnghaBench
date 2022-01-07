
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ulong ;
struct pdo_bound_param_data {int parameter; scalar_t__ driver_data; } ;
typedef int php_stream ;
struct TYPE_6__ {int row_count; int column_count; scalar_t__ executed; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {char* convbuf; scalar_t__ going_long; int cols; int stmt; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
struct TYPE_8__ {int is_unicode; } ;
typedef TYPE_3__ pdo_odbc_param ;
typedef int pdo_odbc_column ;
typedef scalar_t__ SQLSMALLINT ;
typedef int SQLPOINTER ;
typedef int SQLLEN ;
typedef int RETCODE ;


 scalar_t__ IS_RESOURCE ;



 int SQLCloseCursor (int ) ;
 int SQLExecute (int ) ;
 int SQLNumResultCols (int ,scalar_t__*) ;
 int SQLParamData (int ,int *) ;
 int SQLPutData (int ,char*,int) ;
 int SQLRowCount (int ,int*) ;
 int SQL_NEED_DATA ;



 scalar_t__ Z_ISREF (int ) ;
 int * Z_REFVAL (int ) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_string (int *) ;
 int ecalloc (scalar_t__,int) ;
 int efree (char*) ;
 char* emalloc (int) ;
 int pdo_odbc_stmt_error (char*) ;
 int pdo_odbc_utf82ucs2 (TYPE_1__*,int ,char*,int,int*) ;
 int php_stream_from_zval_no_verify (int *,int *) ;
 int php_stream_read (int *,char*,int) ;

__attribute__((used)) static int odbc_stmt_execute(pdo_stmt_t *stmt)
{
 RETCODE rc;
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;
 char *buf = ((void*)0);
 SQLLEN row_count = -1;

 if (stmt->executed) {
  SQLCloseCursor(S->stmt);
 }

 rc = SQLExecute(S->stmt);

 while (rc == SQL_NEED_DATA) {
  struct pdo_bound_param_data *param;

  rc = SQLParamData(S->stmt, (SQLPOINTER*)&param);
  if (rc == SQL_NEED_DATA) {
   php_stream *stm;
   int len;
   pdo_odbc_param *P;
   zval *parameter;

   P = (pdo_odbc_param*)param->driver_data;
   if (Z_ISREF(param->parameter)) {
    parameter = Z_REFVAL(param->parameter);
   } else {
    parameter = &param->parameter;
   }
   if (Z_TYPE_P(parameter) != IS_RESOURCE) {

    zend_ulong ulen;
    convert_to_string(parameter);

    switch (pdo_odbc_utf82ucs2(stmt, P->is_unicode,
       Z_STRVAL_P(parameter),
       Z_STRLEN_P(parameter),
       &ulen)) {
     case 132:
      SQLPutData(S->stmt, Z_STRVAL_P(parameter),
       Z_STRLEN_P(parameter));
      break;
     case 131:
      SQLPutData(S->stmt, S->convbuf, ulen);
      break;
     case 133:
      pdo_odbc_stmt_error("error converting input string");
      SQLCloseCursor(S->stmt);
      if (buf) {
       efree(buf);
      }
      return 0;
    }
    continue;
   }




   php_stream_from_zval_no_verify(stm, parameter);
   if (!stm) {

    pdo_odbc_stmt_error("input LOB is no longer a stream");
    SQLCloseCursor(S->stmt);
    if (buf) {
     efree(buf);
    }
    return 0;
   }


   if (buf == ((void*)0)) {
    buf = emalloc(8192);
   }

   do {
    len = php_stream_read(stm, buf, 8192);
    if (len == 0) {
     break;
    }
    SQLPutData(S->stmt, buf, len);
   } while (1);
  }
 }

 if (buf) {
  efree(buf);
 }

 switch (rc) {
  case 129:
   break;
  case 130:
  case 128:
   pdo_odbc_stmt_error("SQLExecute");
   break;

  default:
   pdo_odbc_stmt_error("SQLExecute");
   return 0;
 }

 SQLRowCount(S->stmt, &row_count);
 stmt->row_count = row_count;

 if (!stmt->executed) {

  SQLSMALLINT colcount;


  SQLNumResultCols(S->stmt, &colcount);

  stmt->column_count = (int)colcount;
  S->cols = ecalloc(colcount, sizeof(pdo_odbc_column));
  S->going_long = 0;
 }

 return 1;
}
