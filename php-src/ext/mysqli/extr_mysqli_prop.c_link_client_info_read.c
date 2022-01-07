
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 int CHECK_STATUS (int ) ;
 int MYSQLI_STATUS_INITIALIZED ;
 int MYSQL_SERVER_VERSION ;
 int ZVAL_STRING (int *,int ) ;

__attribute__((used)) static zval *link_client_info_read(mysqli_object *obj, zval *retval)
{
 CHECK_STATUS(MYSQLI_STATUS_INITIALIZED);
 ZVAL_STRING(retval, MYSQL_SERVER_VERSION);
 return retval;
}
