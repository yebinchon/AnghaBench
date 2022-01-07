
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;


 int E_WARNING ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static zval *row_prop_write(zend_object *object, zend_string *name, zval *value, void **cache_slot)
{
 php_error_docref(((void*)0), E_WARNING, "This PDORow is not from a writable result set");
 return value;
}
