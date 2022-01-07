
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_11__ {TYPE_1__* ce; } ;
typedef TYPE_3__ zend_object ;
typedef int zend_function ;
struct TYPE_12__ {TYPE_2__* dbh; int database_object_handle; } ;
typedef TYPE_4__ pdo_stmt_t ;
struct TYPE_10__ {int ** cls_methods; } ;
struct TYPE_9__ {int function_table; } ;


 size_t PDO_DBH_DRIVER_METHOD_KIND_STMT ;
 int Z_PDO_OBJECT_P (int *) ;
 int pdo_hash_methods (int ,size_t) ;
 TYPE_4__* php_pdo_stmt_fetch_object (TYPE_3__*) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_std_get_method (TYPE_3__**,int *,int const*) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_function *dbstmt_method_get(zend_object **object_pp, zend_string *method_name, const zval *key)
{
 zend_function *fbc = ((void*)0);
 zend_string *lc_method_name;
 zend_object *object = *object_pp;

 lc_method_name = zend_string_tolower(method_name);

 if ((fbc = zend_hash_find_ptr(&object->ce->function_table, lc_method_name)) == ((void*)0)) {
  pdo_stmt_t *stmt = php_pdo_stmt_fetch_object(object);

  if (!stmt->dbh) {
   goto out;
  }


  if (!stmt->dbh->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_STMT]) {
   if (!pdo_hash_methods(Z_PDO_OBJECT_P(&stmt->database_object_handle),
    PDO_DBH_DRIVER_METHOD_KIND_STMT)
    || !stmt->dbh->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_STMT]) {
    goto out;
   }
  }

  if ((fbc = zend_hash_find_ptr(stmt->dbh->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_STMT], lc_method_name)) == ((void*)0)) {
   goto out;
  }

 }

out:
 zend_string_release_ex(lc_method_name, 0);
 if (!fbc) {
  fbc = zend_std_get_method(object_pp, method_name, key);
 }
 return fbc;
}
