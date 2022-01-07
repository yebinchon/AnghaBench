
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_function ;


 int zend_throw_error (int *,char*) ;

__attribute__((used)) static zend_function *php_gd_image_object_get_constructor(zend_object *object)
{
 zend_throw_error(((void*)0), "You cannot initialize a GdImage object except through helper functions");
 return ((void*)0);
}
