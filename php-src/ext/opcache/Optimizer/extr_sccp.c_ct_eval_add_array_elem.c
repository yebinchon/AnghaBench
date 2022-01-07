
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;






 int SEPARATE_ARRAY (int *) ;
 int SUCCESS ;
 int ZSTR_EMPTY_ALLOC () ;
 int Z_ARR_P (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TRY_ADDREF_P (int *) ;
 int Z_TYPE_P (int *) ;
 int zend_dval_to_lval (int ) ;
 int * zend_hash_index_update (int ,int,int *) ;
 int * zend_hash_next_index_insert (int ,int *) ;
 int * zend_hash_update (int ,int ,int *) ;
 int * zend_symtable_update (int ,int ,int *) ;

__attribute__((used)) static inline int ct_eval_add_array_elem(zval *result, zval *value, zval *key) {
 if (!key) {
  SEPARATE_ARRAY(result);
  if ((value = zend_hash_next_index_insert(Z_ARR_P(result), value))) {
   Z_TRY_ADDREF_P(value);
   return SUCCESS;
  }
  return FAILURE;
 }

 switch (Z_TYPE_P(key)) {
  case 130:
   SEPARATE_ARRAY(result);
   value = zend_hash_update(Z_ARR_P(result), ZSTR_EMPTY_ALLOC(), value);
   break;
  case 132:
   SEPARATE_ARRAY(result);
   value = zend_hash_index_update(Z_ARR_P(result), 0, value);
   break;
  case 128:
   SEPARATE_ARRAY(result);
   value = zend_hash_index_update(Z_ARR_P(result), 1, value);
   break;
  case 131:
   SEPARATE_ARRAY(result);
   value = zend_hash_index_update(Z_ARR_P(result), Z_LVAL_P(key), value);
   break;
  case 133:
   SEPARATE_ARRAY(result);
   value = zend_hash_index_update(
    Z_ARR_P(result), zend_dval_to_lval(Z_DVAL_P(key)), value);
   break;
  case 129:
   SEPARATE_ARRAY(result);
   value = zend_symtable_update(Z_ARR_P(result), Z_STR_P(key), value);
   break;
  default:
   return FAILURE;
 }

 Z_TRY_ADDREF_P(value);
 return SUCCESS;
}
