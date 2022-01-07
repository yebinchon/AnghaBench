
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object ;
typedef int HashTable ;



__attribute__((used)) static HashTable *iter_wrapper_get_gc(zend_object *object, zval **table, int *n) {

 *table = ((void*)0);
 *n = 0;
 return ((void*)0);
}
