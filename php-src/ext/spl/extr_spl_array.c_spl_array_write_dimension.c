
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object ;


 int spl_array_write_dimension_ex (int,int *,int *,int *) ;

__attribute__((used)) static void spl_array_write_dimension(zend_object *object, zval *offset, zval *value)
{
 spl_array_write_dimension_ex(1, object, offset, value);
}
