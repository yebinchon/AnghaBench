
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_function ;


 int php_pdo_get_exception () ;
 int zend_throw_exception_ex (int ,int ,char*) ;

__attribute__((used)) static zend_function *row_get_ctor(zend_object *object)
{
 zend_throw_exception_ex(php_pdo_get_exception(), 0, "You may not create a PDORow manually");
 return ((void*)0);
}
