
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 int MYSQLI_VERSION_ID ;
 int ZVAL_LONG (int *,int ) ;

__attribute__((used)) static zval *driver_driver_version_read(mysqli_object *obj, zval *retval)
{
 ZVAL_LONG(retval, MYSQLI_VERSION_ID);
 return retval;
}
