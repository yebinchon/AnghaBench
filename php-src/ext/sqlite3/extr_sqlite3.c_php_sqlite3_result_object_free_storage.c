
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_5__ {int zo; int stmt_obj_zval; TYPE_1__* stmt_obj; } ;
typedef TYPE_2__ php_sqlite3_result ;
struct TYPE_4__ {int stmt; scalar_t__ initialised; } ;


 int Z_ISNULL (int ) ;
 TYPE_2__* php_sqlite3_result_from_obj (int *) ;
 int sqlite3_reset (int ) ;
 int zend_object_std_dtor (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_sqlite3_result_object_free_storage(zend_object *object)
{
 php_sqlite3_result *intern = php_sqlite3_result_from_obj(object);

 if (!intern) {
  return;
 }

 if (!Z_ISNULL(intern->stmt_obj_zval)) {
  if (intern->stmt_obj && intern->stmt_obj->initialised) {
   sqlite3_reset(intern->stmt_obj->stmt);
  }

  zval_ptr_dtor(&intern->stmt_obj_zval);
 }

 zend_object_std_dtor(&intern->zo);
}
