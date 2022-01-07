
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 int ZVAL_FALSE (int *) ;

__attribute__((used)) static zval *driver_embedded_read(mysqli_object *obj, zval *retval)
{
 ZVAL_FALSE(retval);
 return retval;
}
