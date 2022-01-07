
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 int zend_throw_error (int *,char*) ;

__attribute__((used)) static zval *mysqli_read_na(mysqli_object *obj, zval *retval)
{
 zend_throw_error(((void*)0), "Cannot read property");
 return ((void*)0);
}
