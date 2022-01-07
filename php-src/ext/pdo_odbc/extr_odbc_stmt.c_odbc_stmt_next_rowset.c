
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int column_count; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {scalar_t__ going_long; int cols; int stmt; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
typedef int pdo_odbc_column ;
typedef scalar_t__ SQLSMALLINT ;
typedef scalar_t__ SQLRETURN ;


 scalar_t__ SQLMoreResults (int ) ;
 int SQLNumResultCols (int ,scalar_t__*) ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int ecalloc (scalar_t__,int) ;
 int free_cols (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int odbc_stmt_next_rowset(pdo_stmt_t *stmt)
{
 SQLRETURN rc;
 SQLSMALLINT colcount;
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;




 rc = SQLMoreResults(S->stmt);

 if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
  return 0;
 }

 free_cols(stmt, S);

 SQLNumResultCols(S->stmt, &colcount);
 stmt->column_count = (int)colcount;
 S->cols = ecalloc(colcount, sizeof(pdo_odbc_column));
 S->going_long = 0;

 return 1;
}
