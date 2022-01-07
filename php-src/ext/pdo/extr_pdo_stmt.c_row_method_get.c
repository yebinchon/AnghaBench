
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_function ;
struct TYPE_2__ {int function_table; } ;


 TYPE_1__* pdo_row_ce ;
 int * zend_hash_find_ptr (int *,int *) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_function *row_method_get(
 zend_object **object_pp,
 zend_string *method_name, const zval *key)
{
 zend_function *fbc;
 zend_string *lc_method_name;

 lc_method_name = zend_string_tolower(method_name);

 if ((fbc = zend_hash_find_ptr(&pdo_row_ce->function_table, lc_method_name)) == ((void*)0)) {
  zend_string_release_ex(lc_method_name, 0);
  return ((void*)0);
 }

 zend_string_release_ex(lc_method_name, 0);

 return fbc;
}
