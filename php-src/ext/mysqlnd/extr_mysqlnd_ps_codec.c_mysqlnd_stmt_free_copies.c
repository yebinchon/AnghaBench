
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {unsigned int param_count; } ;
typedef TYPE_1__ MYSQLND_STMT_DATA ;


 int mnd_efree (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void
mysqlnd_stmt_free_copies(MYSQLND_STMT_DATA * stmt, zval *copies)
{
 if (copies) {
  unsigned int i;
  for (i = 0; i < stmt->param_count; i++) {
   zval_ptr_dtor(&copies[i]);
  }
  mnd_efree(copies);
 }
}
