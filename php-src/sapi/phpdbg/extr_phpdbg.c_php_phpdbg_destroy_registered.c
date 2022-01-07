
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int zend_function_dtor (int *) ;

__attribute__((used)) static void php_phpdbg_destroy_registered(zval *data)
{
 zend_function_dtor(data);
}
