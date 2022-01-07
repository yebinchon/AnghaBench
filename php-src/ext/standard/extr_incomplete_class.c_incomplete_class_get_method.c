
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_function ;


 int E_ERROR ;
 int incomplete_class_message (int *,int ) ;

__attribute__((used)) static zend_function *incomplete_class_get_method(zend_object **object, zend_string *method, const zval *key)
{
 incomplete_class_message(*object, E_ERROR);
 return ((void*)0);
}
