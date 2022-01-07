
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 int ZVAL_COPY (int *,int *) ;
 int Z_STR_P (int *) ;
 int * zend_hash_find (int *,int ) ;

int zend_optimizer_get_collected_constant(HashTable *constants, zval *name, zval* value)
{
 zval *val;

 if ((val = zend_hash_find(constants, Z_STR_P(name))) != ((void*)0)) {
  ZVAL_COPY(value, val);
  return 1;
 }
 return 0;
}
