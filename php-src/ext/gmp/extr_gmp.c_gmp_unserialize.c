
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_unserialize_data ;
typedef int zend_object ;
typedef int zend_class_entry ;
typedef int php_unserialize_data_t ;
typedef int mpz_ptr ;
typedef int copy_ctor_func_t ;


 int FAILURE ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int PHP_VAR_UNSERIALIZE_DESTROY (int ) ;
 int PHP_VAR_UNSERIALIZE_INIT (int ) ;
 int SUCCESS ;
 int Z_ARRVAL_P (int *) ;
 int * Z_OBJ_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_gmp (int ,int *,int) ;
 int gmp_create (int *,int *) ;
 int php_var_unserialize (int *,unsigned char const**,unsigned char const*,int *) ;
 int * var_tmp_var (int *) ;
 int zend_hash_copy (int ,int ,int ) ;
 scalar_t__ zend_hash_num_elements (int ) ;
 int zend_std_get_properties (int *) ;
 int zend_throw_exception (int *,char*,int ) ;
 scalar_t__ zval_add_ref ;

__attribute__((used)) static int gmp_unserialize(zval *object, zend_class_entry *ce, const unsigned char *buf, size_t buf_len, zend_unserialize_data *data)
{
 mpz_ptr gmpnum;
 const unsigned char *p, *max;
 zval *zv;
 int retval = FAILURE;
 php_unserialize_data_t unserialize_data;
 zend_object *zobj;

 PHP_VAR_UNSERIALIZE_INIT(unserialize_data);
 gmp_create(object, &gmpnum);

 zobj = Z_OBJ_P(object);

 p = buf;
 max = buf + buf_len;

 zv = var_tmp_var(&unserialize_data);
 if (!php_var_unserialize(zv, &p, max, &unserialize_data)
  || Z_TYPE_P(zv) != IS_STRING
  || convert_to_gmp(gmpnum, zv, 10) == FAILURE
 ) {
  zend_throw_exception(((void*)0), "Could not unserialize number", 0);
  goto exit;
 }

 zv = var_tmp_var(&unserialize_data);
 if (!php_var_unserialize(zv, &p, max, &unserialize_data)
  || Z_TYPE_P(zv) != IS_ARRAY
 ) {
  zend_throw_exception(((void*)0), "Could not unserialize properties", 0);
  goto exit;
 }

 if (zend_hash_num_elements(Z_ARRVAL_P(zv)) != 0) {
  zend_hash_copy(
   zend_std_get_properties(zobj), Z_ARRVAL_P(zv),
   (copy_ctor_func_t) zval_add_ref
  );
 }

 retval = SUCCESS;
exit:
 PHP_VAR_UNSERIALIZE_DESTROY(unserialize_data);
 return retval;
}
