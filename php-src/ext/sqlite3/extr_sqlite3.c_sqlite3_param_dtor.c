
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct php_sqlite3_bound_param {int parameter; scalar_t__ name; } ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISNULL (int ) ;
 scalar_t__ Z_PTR_P (int *) ;
 int efree (struct php_sqlite3_bound_param*) ;
 int zend_string_release_ex (scalar_t__,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void sqlite3_param_dtor(zval *data)
{
 struct php_sqlite3_bound_param *param = (struct php_sqlite3_bound_param*)Z_PTR_P(data);

 if (param->name) {
  zend_string_release_ex(param->name, 0);
 }

 if (!Z_ISNULL(param->parameter)) {
  zval_ptr_dtor(&(param->parameter));
  ZVAL_UNDEF(&param->parameter);
 }
 efree(param);
}
