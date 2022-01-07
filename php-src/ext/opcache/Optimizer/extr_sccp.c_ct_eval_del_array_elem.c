
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;




 int IS_PARTIAL_ARRAY (int *) ;


 int SUCCESS ;
 int ZEND_ASSERT (int ) ;
 int ZSTR_EMPTY_ALLOC () ;
 int Z_ARR_P (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int zend_dval_to_lval (int ) ;
 int zend_hash_del (int ,int ) ;
 int zend_hash_index_del (int ,int) ;
 int zend_symtable_del (int ,int ) ;

__attribute__((used)) static inline int ct_eval_del_array_elem(zval *result, zval *key) {
 ZEND_ASSERT(IS_PARTIAL_ARRAY(result));

 switch (Z_TYPE_P(key)) {
  case 130:
   zend_hash_del(Z_ARR_P(result), ZSTR_EMPTY_ALLOC());
   break;
  case 132:
   zend_hash_index_del(Z_ARR_P(result), 0);
   break;
  case 128:
   zend_hash_index_del(Z_ARR_P(result), 1);
   break;
  case 131:
   zend_hash_index_del(Z_ARR_P(result), Z_LVAL_P(key));
   break;
  case 133:
   zend_hash_index_del(Z_ARR_P(result), zend_dval_to_lval(Z_DVAL_P(key)));
   break;
  case 129:
   zend_symtable_del(Z_ARR_P(result), Z_STR_P(key));
   break;
  default:
   return FAILURE;
 }

 return SUCCESS;
}
