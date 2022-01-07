
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 int FAILURE ;
 int zend_throw_error (int *,char*) ;

__attribute__((used)) static int mysqli_write_na(mysqli_object *obj, zval *newval)
{
 zend_throw_error(((void*)0), "Cannot write property");
 return FAILURE;
}
