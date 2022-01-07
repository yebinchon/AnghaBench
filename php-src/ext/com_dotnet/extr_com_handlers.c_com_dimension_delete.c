
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object ;


 int E_WARNING ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static void com_dimension_delete(zend_object *object, zval *offset)
{
 php_error_docref(((void*)0), E_WARNING, "Cannot delete properties from a COM object");
}
