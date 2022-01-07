
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_op_array ;


 int ZVAL_STR (int *,int *) ;
 int zend_optimizer_add_literal (int *,int *) ;
 int zend_string_hash_val (int *) ;

__attribute__((used)) static inline int zend_optimizer_add_literal_string(zend_op_array *op_array, zend_string *str) {
 zval zv;
 ZVAL_STR(&zv, str);
 zend_string_hash_val(str);
 return zend_optimizer_add_literal(op_array, &zv);
}
