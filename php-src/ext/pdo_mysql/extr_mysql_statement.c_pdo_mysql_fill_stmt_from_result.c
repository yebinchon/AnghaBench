
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* zend_long ;
struct TYPE_6__ {int column_count; void* row_count; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {int * result; int fields; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_mysql_stmt ;
struct TYPE_8__ {int server; int buffered; } ;
typedef TYPE_3__ pdo_mysql_db_handle ;
typedef scalar_t__ my_ulonglong ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_RETURN (int) ;
 scalar_t__ mysql_affected_rows (int ) ;
 int mysql_fetch_fields (int *) ;
 scalar_t__ mysql_num_fields (int *) ;
 scalar_t__ mysql_num_rows (int *) ;
 int * mysql_store_result (int ) ;
 int * mysql_use_result (int ) ;
 int pdo_mysql_error_stmt (TYPE_1__*) ;

__attribute__((used)) static int pdo_mysql_fill_stmt_from_result(pdo_stmt_t *stmt)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
 pdo_mysql_db_handle *H = S->H;
 my_ulonglong row_count;
 PDO_DBG_ENTER("pdo_mysql_fill_stmt_from_result");

 row_count = mysql_affected_rows(H->server);
 if (row_count == (my_ulonglong)-1) {


  if (!H->buffered) {
   S->result = mysql_use_result(H->server);
  } else {
   S->result = mysql_store_result(H->server);
  }
  if (((void*)0) == S->result) {
   pdo_mysql_error_stmt(stmt);
   PDO_DBG_RETURN(0);
  }

  stmt->row_count = (zend_long) mysql_num_rows(S->result);
  stmt->column_count = (int) mysql_num_fields(S->result);
  S->fields = mysql_fetch_fields(S->result);
 } else {

  stmt->row_count = (zend_long) row_count;
 }

 PDO_DBG_RETURN(1);
}
