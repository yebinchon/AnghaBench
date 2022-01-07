
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_11__ {int column_count; int error_code; scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_stmt_t ;
struct TYPE_12__ {char** current_data; size_t* out_length; size_t* current_lengths; TYPE_3__* bound_result; scalar_t__* out_null; TYPE_7__* stmt; int result; } ;
typedef TYPE_5__ pdo_mysql_stmt ;
struct TYPE_13__ {TYPE_2__* data; } ;
struct TYPE_10__ {char* buffer; size_t buffer_length; } ;
struct TYPE_9__ {TYPE_1__* result_bind; } ;
struct TYPE_8__ {int zv; } ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,TYPE_7__*) ;
 int PDO_DBG_RETURN (int) ;
 int Z_TRY_ADDREF (int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int pdo_mysql_stmt_get_col(pdo_stmt_t *stmt, int colno, char **ptr, size_t *len, int *caller_frees)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;

 PDO_DBG_ENTER("pdo_mysql_stmt_get_col");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);
 if (!S->result) {
  PDO_DBG_RETURN(0);
 }


 if (!S->stmt) {
  if (S->current_data == ((void*)0) || !S->result) {
   PDO_DBG_RETURN(0);
  }
 }

 if (colno >= stmt->column_count) {

  PDO_DBG_RETURN(0);
 }
 if (S->stmt) {
  if (S->out_null[colno]) {
   *ptr = ((void*)0);
   *len = 0;
   PDO_DBG_RETURN(1);
  }
  *ptr = S->bound_result[colno].buffer;
  if (S->out_length[colno] > S->bound_result[colno].buffer_length) {

   strcpy(stmt->error_code, "01004");
   S->out_length[colno] = S->bound_result[colno].buffer_length;
   *len = S->out_length[colno];
   PDO_DBG_RETURN(0);
  }
  *len = S->out_length[colno];
  PDO_DBG_RETURN(1);
 }

 *ptr = S->current_data[colno];
 *len = S->current_lengths[colno];
 PDO_DBG_RETURN(1);
}
