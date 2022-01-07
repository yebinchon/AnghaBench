
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int column_count; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_5__* cols; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
struct TYPE_8__ {struct TYPE_8__* data; } ;


 int efree (TYPE_5__*) ;

__attribute__((used)) static void free_cols(pdo_stmt_t *stmt, pdo_odbc_stmt *S)
{
 if (S->cols) {
  int i;

  for (i = 0; i < stmt->column_count; i++) {
   if (S->cols[i].data) {
    efree(S->cols[i].data);
   }
  }
  efree(S->cols);
  S->cols = ((void*)0);
 }
}
