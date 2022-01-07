
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const zval ;
typedef int zend_uchar ;
struct TYPE_5__ {unsigned int param_count; TYPE_1__* param_bind; } ;
struct TYPE_4__ {short type; int const zv; } ;
typedef TYPE_2__ MYSQLND_STMT_DATA ;


 scalar_t__ IS_LONG ;
 scalar_t__ IS_STRING ;
 short MYSQL_TYPE_LONG ;
 short MYSQL_TYPE_LONGLONG ;
 short MYSQL_TYPE_VAR_STRING ;
 int ZVAL_DEREF (int const*) ;
 int Z_ISNULL_P (int const*) ;
 int Z_ISUNDEF (int const) ;
 scalar_t__ Z_TYPE_P (int const*) ;
 int int2store (int *,short) ;

__attribute__((used)) static void
mysqlnd_stmt_execute_store_types(MYSQLND_STMT_DATA * stmt, zval * copies, zend_uchar ** p)
{
 unsigned int i;
 for (i = 0; i < stmt->param_count; i++) {
  short current_type = stmt->param_bind[i].type;
  zval *parameter = &stmt->param_bind[i].zv;






  ZVAL_DEREF(parameter);
  if (!Z_ISNULL_P(parameter) && (current_type == MYSQL_TYPE_LONG || current_type == MYSQL_TYPE_LONGLONG)) {




   if (Z_TYPE_P(parameter) != IS_LONG) {
    const zval *tmp_data = (copies && !Z_ISUNDEF(copies[i]))? &copies[i] : parameter;




    if (Z_TYPE_P(tmp_data) == IS_STRING) {
     current_type = MYSQL_TYPE_VAR_STRING;






    }
   }
  }
  int2store(*p, current_type);
  *p+= 2;
 }
}
