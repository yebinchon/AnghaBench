
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 int ZVAL_STRING (int *,char*) ;
 scalar_t__ mysql_get_client_info () ;

__attribute__((used)) static zval *driver_client_info_read(mysqli_object *obj, zval *retval)
{
 ZVAL_STRING(retval, (char *)mysql_get_client_info());
 return retval;
}
