
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pdo_column_data {int maxlen; int param_type; int name; } ;
struct TYPE_7__ {struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {int going_long; TYPE_1__* cols; int stmt; } ;
typedef TYPE_3__ pdo_odbc_stmt ;
struct TYPE_6__ {scalar_t__ coltype; int datalen; int is_long; void* data; int fetched_len; scalar_t__ is_unicode; int colname; } ;
typedef int SWORD ;
typedef int SQLULEN ;
typedef int SQLLEN ;
typedef scalar_t__ RETCODE ;


 int PDO_PARAM_STR ;
 scalar_t__ SQLBindCol (int ,int,int ,void*,int,int *) ;
 scalar_t__ SQLColAttribute (int ,int,int ,int *,int ,int *,int*) ;
 scalar_t__ SQLDescribeCol (int ,int,int ,int,int *,scalar_t__*,int*,int *,int *) ;
 int SQL_C_BINARY ;
 int SQL_C_CHAR ;
 int SQL_DESC_DISPLAY_SIZE ;
 scalar_t__ SQL_LONGVARBINARY ;
 scalar_t__ SQL_LONGVARCHAR ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 scalar_t__ SQL_VARBINARY ;
 scalar_t__ SQL_VARCHAR ;
 scalar_t__ SQL_WLONGVARCHAR ;
 scalar_t__ SQL_WVARCHAR ;
 void* emalloc (int) ;
 scalar_t__ pdo_odbc_sqltype_is_unicode (TYPE_3__*,scalar_t__) ;
 int pdo_odbc_stmt_error (char*) ;
 int zend_string_init (int ,int ,int ) ;

__attribute__((used)) static int odbc_stmt_describe(pdo_stmt_t *stmt, int colno)
{
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;
 struct pdo_column_data *col = &stmt->columns[colno];
 RETCODE rc;
 SWORD colnamelen;
 SQLULEN colsize;
 SQLLEN displaysize;

 rc = SQLDescribeCol(S->stmt, colno+1, S->cols[colno].colname,
   sizeof(S->cols[colno].colname)-1, &colnamelen,
   &S->cols[colno].coltype, &colsize, ((void*)0), ((void*)0));





 if (0 == colsize &&
  (S->cols[colno].coltype == SQL_VARCHAR ||
   S->cols[colno].coltype == SQL_LONGVARCHAR ||






   S->cols[colno].coltype == SQL_VARBINARY ||
   S->cols[colno].coltype == SQL_LONGVARBINARY)) {
    S->going_long = 1;
 }

 if (rc != SQL_SUCCESS) {
  pdo_odbc_stmt_error("SQLDescribeCol");
  if (rc != SQL_SUCCESS_WITH_INFO) {
   return 0;
  }
 }

 rc = SQLColAttribute(S->stmt, colno+1,
   SQL_DESC_DISPLAY_SIZE,
   ((void*)0), 0, ((void*)0), &displaysize);

 if (rc != SQL_SUCCESS) {
  pdo_odbc_stmt_error("SQLColAttribute");
  if (rc != SQL_SUCCESS_WITH_INFO) {
   return 0;
  }
 }
 colsize = displaysize;

 col->maxlen = S->cols[colno].datalen = colsize;
 col->name = zend_string_init(S->cols[colno].colname, colnamelen, 0);
 S->cols[colno].is_unicode = pdo_odbc_sqltype_is_unicode(S, S->cols[colno].coltype);


 col->param_type = PDO_PARAM_STR;




 if (colsize < 256 && !S->going_long) {
  S->cols[colno].data = emalloc(colsize+1);
  S->cols[colno].is_long = 0;

  rc = SQLBindCol(S->stmt, colno+1,
   S->cols[colno].is_unicode ? SQL_C_BINARY : SQL_C_CHAR,
   S->cols[colno].data,
    S->cols[colno].datalen+1, &S->cols[colno].fetched_len);

  if (rc != SQL_SUCCESS) {
   pdo_odbc_stmt_error("SQLBindCol");
   return 0;
  }
 } else {


  S->cols[colno].data = emalloc(256);
  S->going_long = 1;
  S->cols[colno].is_long = 1;
 }

 return 1;
}
