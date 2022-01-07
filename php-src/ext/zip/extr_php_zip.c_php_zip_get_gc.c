
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object ;
typedef int HashTable ;


 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *php_zip_get_gc(zend_object *object, zval **gc_data, int *gc_data_count)
{
 *gc_data = ((void*)0);
 *gc_data_count = 0;
 return zend_std_get_properties(object);
}
