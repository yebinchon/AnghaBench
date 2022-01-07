
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ executed; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {scalar_t__ stmt; struct TYPE_8__* convbuf; } ;
typedef TYPE_2__ pdo_odbc_stmt ;


 int SQLCloseCursor (scalar_t__) ;
 int SQLFreeHandle (int ,scalar_t__) ;
 int SQL_HANDLE_STMT ;
 scalar_t__ SQL_NULL_HANDLE ;
 int efree (TYPE_2__*) ;
 int free_cols (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int odbc_stmt_dtor(pdo_stmt_t *stmt)
{
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

 if (S->stmt != SQL_NULL_HANDLE) {
  if (stmt->executed) {
   SQLCloseCursor(S->stmt);
  }
  SQLFreeHandle(SQL_HANDLE_STMT, S->stmt);
  S->stmt = SQL_NULL_HANDLE;
 }

 free_cols(stmt, S);
 if (S->convbuf) {
  efree(S->convbuf);
 }
 efree(S);

 return 1;
}
