
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;






 int SUCCESS ;
 int ZSTR_EMPTY_ALLOC () ;
 int Z_ARR_P (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int zend_dval_to_lval (int ) ;
 int * zend_hash_find (int ,int ) ;
 int * zend_hash_index_find (int ,int) ;
 int * zend_symtable_find (int ,int ) ;

__attribute__((used)) static inline int fetch_array_elem(zval **result, zval *op1, zval *op2) {
 switch (Z_TYPE_P(op2)) {
  case 130:
   *result = zend_hash_find(Z_ARR_P(op1), ZSTR_EMPTY_ALLOC());
   return SUCCESS;
  case 132:
   *result = zend_hash_index_find(Z_ARR_P(op1), 0);
   return SUCCESS;
  case 128:
   *result = zend_hash_index_find(Z_ARR_P(op1), 1);
   return SUCCESS;
  case 131:
   *result = zend_hash_index_find(Z_ARR_P(op1), Z_LVAL_P(op2));
   return SUCCESS;
  case 133:
   *result = zend_hash_index_find(Z_ARR_P(op1), zend_dval_to_lval(Z_DVAL_P(op2)));
   return SUCCESS;
  case 129:
   *result = zend_symtable_find(Z_ARR_P(op1), Z_STR_P(op2));
   return SUCCESS;
  default:
   return FAILURE;
 }
}
