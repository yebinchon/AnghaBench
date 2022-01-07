
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int ser_context ;


 scalar_t__ IS_ARRAY ;
 int Z_ARRVAL_P (int const*) ;
 scalar_t__ Z_TYPE_P (int const*) ;
 int do_from_zval_err (int *,char*,char*) ;
 int zend_hash_num_elements (int ) ;

size_t calculate_scm_rights_space(const zval *arr, ser_context *ctx)
{
 int num_elems;

 if (Z_TYPE_P(arr) != IS_ARRAY) {
  do_from_zval_err(ctx, "%s", "expected an array here");
  return (size_t)-1;
 }

 num_elems = zend_hash_num_elements(Z_ARRVAL_P(arr));
 if (num_elems == 0) {
  do_from_zval_err(ctx, "%s", "expected at least one element in this array");
  return (size_t)-1;
 }

 return zend_hash_num_elements(Z_ARRVAL_P(arr)) * sizeof(int);
}
