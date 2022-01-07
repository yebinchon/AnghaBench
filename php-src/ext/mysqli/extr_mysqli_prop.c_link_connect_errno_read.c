
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int mysqli_object ;


 scalar_t__ MyG (int ) ;
 int ZVAL_LONG (int *,int ) ;
 int error_no ;

__attribute__((used)) static zval *link_connect_errno_read(mysqli_object *obj, zval *retval)
{
 ZVAL_LONG(retval, (zend_long)MyG(error_no));
 return retval;
}
