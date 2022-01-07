
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_5__ {int zo; int db_obj_zval; int stmt; TYPE_1__* db_obj; scalar_t__ initialised; int * bound_params; } ;
typedef TYPE_2__ php_sqlite3_stmt ;
struct TYPE_4__ {int free_list; } ;


 int FREE_HASHTABLE (int *) ;
 int Z_ISUNDEF (int ) ;
 scalar_t__ php_sqlite3_compare_stmt_free ;
 TYPE_2__* php_sqlite3_stmt_from_obj (int *) ;
 int zend_hash_destroy (int *) ;
 int zend_llist_del_element (int *,int ,int (*) (void*,void*)) ;
 int zend_object_std_dtor (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_sqlite3_stmt_object_free_storage(zend_object *object)
{
 php_sqlite3_stmt *intern = php_sqlite3_stmt_from_obj(object);

 if (!intern) {
  return;
 }

 if (intern->bound_params) {
  zend_hash_destroy(intern->bound_params);
  FREE_HASHTABLE(intern->bound_params);
  intern->bound_params = ((void*)0);
 }

 if (intern->initialised) {
  zend_llist_del_element(&(intern->db_obj->free_list), intern->stmt,
   (int (*)(void *, void *)) php_sqlite3_compare_stmt_free);
 }

 if (!Z_ISUNDEF(intern->db_obj_zval)) {
  zval_ptr_dtor(&intern->db_obj_zval);
 }

 zend_object_std_dtor(&intern->zo);
}
