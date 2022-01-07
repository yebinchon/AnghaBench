
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_function ;
struct TYPE_6__ {TYPE_1__* inner; } ;
typedef TYPE_2__ pdo_dbh_object_t ;
struct TYPE_5__ {int * cls_methods; } ;


 size_t PDO_DBH_DRIVER_METHOD_KIND_DBH ;
 int pdo_hash_methods (TYPE_2__*,size_t) ;
 TYPE_2__* php_pdo_dbh_fetch_object (int *) ;
 int * zend_hash_find_ptr (int ,int *) ;
 int * zend_std_get_method (int **,int *,int const*) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_function *dbh_method_get(zend_object **object, zend_string *method_name, const zval *key)
{
 zend_function *fbc = ((void*)0);
 pdo_dbh_object_t *dbh_obj = php_pdo_dbh_fetch_object(*object);
 zend_string *lc_method_name;

 if ((fbc = zend_std_get_method(object, method_name, key)) == ((void*)0)) {


  if (!dbh_obj->inner->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_DBH]) {
   if (!pdo_hash_methods(dbh_obj,
    PDO_DBH_DRIVER_METHOD_KIND_DBH)
    || !dbh_obj->inner->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_DBH]) {
    goto out;
   }
  }

  lc_method_name = zend_string_tolower(method_name);
  fbc = zend_hash_find_ptr(dbh_obj->inner->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_DBH], lc_method_name);
  zend_string_release_ex(lc_method_name, 0);
 }

out:
 return fbc;
}
