
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef enum pdo_attribute_type { ____Placeholder_pdo_attribute_type } pdo_attribute_type ;


 int Z_ARRVAL_P (int *) ;
 int * zend_hash_index_find (int ,int) ;
 int * zend_string_copy (int *) ;
 int * zval_try_get_string (int *) ;

__attribute__((used)) static inline zend_string *pdo_attr_strval(zval *options, enum pdo_attribute_type option_name, zend_string *defval)
{
 zval *v;

 if (options && (v = zend_hash_index_find(Z_ARRVAL_P(options), option_name))) {
  return zval_try_get_string(v);
 }
 return defval ? zend_string_copy(defval) : ((void*)0);
}
