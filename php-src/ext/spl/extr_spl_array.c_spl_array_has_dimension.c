
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object ;


 int spl_array_has_dimension_ex (int,int *,int *,int) ;

__attribute__((used)) static int spl_array_has_dimension(zend_object *object, zval *offset, int check_empty)
{
 return spl_array_has_dimension_ex(1, object, offset, check_empty);
}
