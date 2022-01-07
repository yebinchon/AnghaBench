
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* query; int link_handle; int result; int param; scalar_t__ stmt; } ;
typedef TYPE_1__ MY_STMT ;


 int E_WARNING ;
 int FETCH_RESULT ;
 int FETCH_SIMPLE ;
 int TRUE ;
 int Z_ISUNDEF (int ) ;
 int efree (TYPE_1__*) ;
 scalar_t__ mysqli_stmt_close (scalar_t__,int ) ;
 int php_error_docref (int *,int ,char*) ;
 int php_free_stmt_bind_buffer (int ,int ) ;
 int zval_ptr_dtor (int *) ;

void php_clear_stmt_bind(MY_STMT *stmt)
{
 if (stmt->stmt) {
  if (mysqli_stmt_close(stmt->stmt, TRUE)) {
   php_error_docref(((void*)0), E_WARNING, "Error occurred while closing statement");
   return;
  }
 }







 php_free_stmt_bind_buffer(stmt->param, FETCH_SIMPLE);

 php_free_stmt_bind_buffer(stmt->result, FETCH_RESULT);

 if (!Z_ISUNDEF(stmt->link_handle)) {
  zval_ptr_dtor(&stmt->link_handle);
 }

 if (stmt->query) {
  efree(stmt->query);
 }
 efree(stmt);
}
