
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int enum_func_status ;
struct TYPE_5__ {unsigned int param_count; int error_info; TYPE_1__* param_bind; } ;
struct TYPE_4__ {int type; int flags; int zv; } ;
typedef TYPE_2__ MYSQLND_STMT_DATA ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ IS_DOUBLE ;
 scalar_t__ IS_NULL ;
 scalar_t__ IS_STRING ;
 int MYSQLND_PARAM_BIND_BLOB_USED ;





 scalar_t__ PASS ;
 int SET_OOM_ERROR (int ) ;
 int ZVAL_DEREF (int *) ;
 scalar_t__ Z_ISREF (int ) ;
 scalar_t__ Z_ISREF_P (int *) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 int * Z_REFVAL (int ) ;
 size_t Z_STRLEN_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_long_ex (int *) ;
 scalar_t__ mysqlnd_stmt_copy_it (int **,int *,unsigned int,unsigned int) ;
 int try_convert_to_string (int *) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_execute_calculate_param_values_size(MYSQLND_STMT_DATA * stmt, zval ** copies_param, size_t * data_size)
{
 unsigned int i;
 DBG_ENTER("mysqlnd_stmt_execute_calculate_param_values_size");
 for (i = 0; i < stmt->param_count; i++) {
  unsigned short is_longlong = 0;
  unsigned int j;
  zval *bind_var, *the_var = &stmt->param_bind[i].zv;

  bind_var = the_var;
  ZVAL_DEREF(the_var);
  if ((stmt->param_bind[i].type != 129 && Z_TYPE_P(the_var) == IS_NULL)) {
   continue;
  }

  if (Z_ISREF_P(bind_var)) {
   for (j = i + 1; j < stmt->param_count; j++) {
    if (Z_ISREF(stmt->param_bind[j].zv) && Z_REFVAL(stmt->param_bind[j].zv) == the_var) {

     if (!*copies_param || Z_ISUNDEF((*copies_param)[i])) {
      if (PASS != mysqlnd_stmt_copy_it(copies_param, the_var, stmt->param_count, i)) {
       SET_OOM_ERROR(stmt->error_info);
       goto end;
      }
     }
     break;
    }
   }
  }

  switch (stmt->param_bind[i].type) {
   case 132:
    *data_size += 8;
    if (Z_TYPE_P(the_var) != IS_DOUBLE) {
     if (!*copies_param || Z_ISUNDEF((*copies_param)[i])) {
      if (PASS != mysqlnd_stmt_copy_it(copies_param, the_var, stmt->param_count, i)) {
       SET_OOM_ERROR(stmt->error_info);
       goto end;
      }
     }
    }
    break;
   case 130:
    is_longlong = 4;

   case 131:
    {
     zval *tmp_data = (*copies_param && !Z_ISUNDEF((*copies_param)[i]))? &(*copies_param)[i]: the_var;
     if (Z_TYPE_P(tmp_data) == IS_STRING) {
      goto use_string;
     }
     convert_to_long_ex(tmp_data);
    }
    *data_size += 4 + is_longlong;
    break;
   case 129:
    if (!(stmt->param_bind[i].flags & MYSQLND_PARAM_BIND_BLOB_USED)) {





     (*data_size)++;
    }
    break;
   case 128:
use_string:
    *data_size += 8;
    if (Z_TYPE_P(the_var) != IS_STRING) {
     if (!*copies_param || Z_ISUNDEF((*copies_param)[i])) {
      if (PASS != mysqlnd_stmt_copy_it(copies_param, the_var, stmt->param_count, i)) {
       SET_OOM_ERROR(stmt->error_info);
       goto end;
      }
     }
     the_var = &((*copies_param)[i]);
    }

    if (!try_convert_to_string(the_var)) {
     goto end;
    }
    *data_size += Z_STRLEN_P(the_var);
    break;
  }
 }
 DBG_RETURN(PASS);
end:
 DBG_RETURN(FAIL);
}
