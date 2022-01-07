
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ zend_long ;
struct TYPE_7__ {int column_count; scalar_t__ row_count; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {int * result; scalar_t__ stmt; int fields; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_mysql_stmt ;
struct TYPE_9__ {int server; scalar_t__ buffered; int emulate_prepare; } ;
typedef TYPE_3__ pdo_mysql_db_handle ;


 scalar_t__ FAIL ;
 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,scalar_t__) ;
 int PDO_DBG_RETURN (int) ;
 int mysql_fetch_fields (int *) ;
 int mysql_free_result (int *) ;
 int mysql_more_results (int ) ;
 scalar_t__ mysql_next_result (int ) ;
 scalar_t__ mysql_num_fields (int *) ;
 scalar_t__ mysql_stmt_affected_rows (scalar_t__) ;
 int mysql_stmt_field_count (scalar_t__) ;
 int mysql_stmt_free_result (scalar_t__) ;
 scalar_t__ mysql_stmt_store_result (scalar_t__) ;
 int mysqlnd_stmt_bind_one_result (scalar_t__,int) ;
 int mysqlnd_stmt_more_results (scalar_t__) ;
 scalar_t__ mysqlnd_stmt_next_result (scalar_t__) ;
 int * mysqlnd_stmt_result_metadata (scalar_t__) ;
 int pdo_mysql_error_stmt (TYPE_1__*) ;
 int pdo_mysql_fill_stmt_from_result (TYPE_1__*) ;

__attribute__((used)) static int pdo_mysql_stmt_next_rowset(pdo_stmt_t *stmt)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
 pdo_mysql_db_handle *H = S->H;



 PDO_DBG_ENTER("pdo_mysql_stmt_next_rowset");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);
 if (S->stmt) {
  if (S->result) {
   stmt->column_count = (int)mysql_num_fields(S->result);
  }
  mysql_stmt_free_result(S->stmt);
 }

 if (S->result) {
  mysql_free_result(S->result);
  S->result = ((void*)0);
 }

 if (!mysql_more_results(H->server)) {

  PDO_DBG_RETURN(0);
 }
 if (mysql_next_result(H->server) > 0) {
  pdo_mysql_error_stmt(stmt);
  PDO_DBG_RETURN(0);
 } else {
  PDO_DBG_RETURN(pdo_mysql_fill_stmt_from_result(stmt));
 }

}
