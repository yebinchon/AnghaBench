
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int enum_func_status ;
struct TYPE_5__ {unsigned int param_count; int send_types_to_server; int error_info; TYPE_1__* param_bind; } ;
struct TYPE_4__ {short type; int zv; } ;
typedef TYPE_2__ MYSQLND_STMT_DATA ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ IS_LONG ;
 short const MYSQL_TYPE_LONG ;
 short const MYSQL_TYPE_LONGLONG ;
 short const MYSQL_TYPE_TINY ;
 scalar_t__ PASS ;
 int SET_OOM_ERROR (int ) ;
 double ZEND_LONG_MAX ;
 double ZEND_LONG_MIN ;
 int ZVAL_DEREF (int *) ;
 int Z_ISNULL_P (int *) ;
 int Z_ISUNDEF (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_long (int *) ;
 int convert_to_string_ex (int *) ;
 scalar_t__ mysqlnd_stmt_copy_it (int **,int *,unsigned int,unsigned int) ;
 double zval_get_double (int *) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_execute_prepare_param_types(MYSQLND_STMT_DATA * stmt, zval ** copies_param, int * resend_types_next_time)
{
 unsigned int i;
 DBG_ENTER("mysqlnd_stmt_execute_prepare_param_types");
 for (i = 0; i < stmt->param_count; i++) {
  const short current_type = stmt->param_bind[i].type;
  zval *parameter = &stmt->param_bind[i].zv;

  ZVAL_DEREF(parameter);
  if (!Z_ISNULL_P(parameter) && (current_type == MYSQL_TYPE_LONG || current_type == MYSQL_TYPE_LONGLONG || current_type == MYSQL_TYPE_TINY)) {

   if (Z_TYPE_P(parameter) != IS_LONG &&
    PASS != mysqlnd_stmt_copy_it(copies_param, parameter, stmt->param_count, i))
   {
    SET_OOM_ERROR(stmt->error_info);
    goto end;
   }




   if (Z_TYPE_P(parameter) != IS_LONG) {
    zval *tmp_data = (*copies_param && !Z_ISUNDEF((*copies_param)[i]))? &(*copies_param)[i]: parameter;





    double d = zval_get_double(tmp_data);






    if (d > ZEND_LONG_MAX || d < ZEND_LONG_MIN) {
     stmt->send_types_to_server = *resend_types_next_time = 1;
     convert_to_string_ex(tmp_data);
    } else {
     convert_to_long(tmp_data);
    }
   }
  }
 }
 DBG_RETURN(PASS);
end:
 DBG_RETURN(FAIL);
}
