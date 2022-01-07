
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef scalar_t__ zend_long ;
struct TYPE_6__ {scalar_t__ column_count; TYPE_1__* columns; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_2__* stmt; } ;
typedef TYPE_3__ pdo_row_t ;
struct TYPE_5__ {int * name; } ;


 scalar_t__ IS_LONG ;
 scalar_t__ IS_NULL ;
 scalar_t__ ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int fetch_value (TYPE_2__*,int *,int,int *) ;
 int i_zend_is_true (int *) ;
 scalar_t__ is_numeric_string_ex (int ,scalar_t__,scalar_t__*,int *,int ,int *) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static int row_prop_exists(zend_object *object, zend_string *name, int check_empty, void **cache_slot)
{
 pdo_row_t *row = (pdo_row_t *)object;
 pdo_stmt_t *stmt = row->stmt;
 int colno = -1;
 zend_long lval;

 if (stmt) {
  if (is_numeric_string_ex(ZSTR_VAL(name), ZSTR_LEN(name), &lval, ((void*)0), 0, ((void*)0)) == IS_LONG) {
   return lval >=0 && lval < stmt->column_count;
  }



  for (colno = 0; colno < stmt->column_count; colno++) {
   if (ZSTR_LEN(stmt->columns[colno].name) == ZSTR_LEN(name) &&
       strncmp(ZSTR_VAL(stmt->columns[colno].name), ZSTR_VAL(name), ZSTR_LEN(name)) == 0) {
     int res;
     zval val;

     fetch_value(stmt, &val, colno, ((void*)0));
     res = check_empty ? i_zend_is_true(&val) : Z_TYPE(val) != IS_NULL;
     zval_ptr_dtor_nogc(&val);

     return res;
   }
  }
 }

 return 0;
}
