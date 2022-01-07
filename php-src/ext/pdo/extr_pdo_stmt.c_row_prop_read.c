
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
struct TYPE_6__ {scalar_t__ column_count; int std; TYPE_1__* columns; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_2__* stmt; } ;
typedef TYPE_3__ pdo_row_t ;
struct TYPE_5__ {int * name; } ;


 scalar_t__ IS_LONG ;
 scalar_t__ ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_NULL (int *) ;
 int fetch_value (TYPE_2__*,int *,int,int *) ;
 scalar_t__ is_numeric_string_ex (int ,scalar_t__,scalar_t__*,int *,int ,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;
 int * zend_std_read_property (int *,int *,int,void**,int *) ;

__attribute__((used)) static zval *row_prop_read(zend_object *object, zend_string *name, int type, void **cache_slot, zval *rv)
{
 pdo_row_t *row = (pdo_row_t *)object;
 pdo_stmt_t *stmt = row->stmt;
 int colno = -1;
 zend_long lval;

 ZVAL_NULL(rv);
 if (stmt) {
  if (is_numeric_string_ex(ZSTR_VAL(name), ZSTR_LEN(name), &lval, ((void*)0), 0, ((void*)0)) == IS_LONG) {
   if (lval >= 0 && lval < stmt->column_count) {
    fetch_value(stmt, rv, lval, ((void*)0));
   }
  } else {


   for (colno = 0; colno < stmt->column_count; colno++) {
    if (ZSTR_LEN(stmt->columns[colno].name) == ZSTR_LEN(name) &&
        strncmp(ZSTR_VAL(stmt->columns[colno].name), ZSTR_VAL(name), ZSTR_LEN(name)) == 0) {
     fetch_value(stmt, rv, colno, ((void*)0));
     return rv;
    }
   }
   if (strcmp(ZSTR_VAL(name), "queryString") == 0) {

    return zend_std_read_property(&stmt->std, name, type, cache_slot, rv);
   }
  }
 }

 return rv;
}
