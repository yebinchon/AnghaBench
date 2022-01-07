
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mysqli_object ;


 scalar_t__ MyG (int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,scalar_t__) ;
 int error_msg ;

__attribute__((used)) static zval *link_connect_error_read(mysqli_object *obj, zval *retval)
{
 if (MyG(error_msg)) {
  ZVAL_STRING(retval, MyG(error_msg));
 } else {
  ZVAL_NULL(retval);
 }
 return retval;
}
