
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object ;
typedef int HashTable ;


 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *date_object_get_gc_interval(zend_object *object, zval **table, int *n)
{

 *table = ((void*)0);
 *n = 0;
 return zend_std_get_properties(object);
}
