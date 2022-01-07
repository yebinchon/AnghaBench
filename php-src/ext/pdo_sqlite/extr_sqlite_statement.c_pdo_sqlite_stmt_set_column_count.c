
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int column_count; TYPE_3__* columns; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int * name; } ;


 int efree (TYPE_3__*) ;
 int zend_string_release (int *) ;

__attribute__((used)) static void pdo_sqlite_stmt_set_column_count(pdo_stmt_t *stmt, int new_count)
{

 if (!stmt->columns) {
  stmt->column_count = new_count;

  return;
 }





 if (new_count == stmt->column_count) {
  return;
 }


 int i;

 for (i = 0; i < stmt->column_count; i++) {
  if (stmt->columns[i].name) {
   zend_string_release(stmt->columns[i].name);
   stmt->columns[i].name = ((void*)0);
  }
 }

 efree(stmt->columns);
 stmt->columns = ((void*)0);
 stmt->column_count = new_count;
}
