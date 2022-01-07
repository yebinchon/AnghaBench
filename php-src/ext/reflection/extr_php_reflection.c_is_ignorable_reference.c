
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;
typedef int HashTable ;


 scalar_t__ IS_ARRAY ;
 int * Z_ARRVAL_P (int ) ;
 int Z_REFCOUNT_P (int *) ;
 int Z_REFVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int ) ;

__attribute__((used)) static zend_bool is_ignorable_reference(HashTable *ht, zval *ref) {
 if (Z_REFCOUNT_P(ref) != 1) {
  return 0;
 }



 return Z_TYPE_P(Z_REFVAL_P(ref)) != IS_ARRAY || Z_ARRVAL_P(Z_REFVAL_P(ref)) != ht;
}
