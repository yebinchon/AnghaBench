
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef int MYSQL_RES ;
typedef TYPE_2__ MYSQLI_RESOURCE ;


 int CHECK_STATUS (int ) ;
 int MYSQLI_STATUS_VALID ;
 int MYSQLI_STORE_RESULT ;
 int MYSQLI_USE_RESULT ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 scalar_t__ mysqli_result_is_unbuffered (int *) ;

__attribute__((used)) static zval *result_type_read(mysqli_object *obj, zval *retval)
{
 MYSQL_RES *p;

 CHECK_STATUS(MYSQLI_STATUS_VALID);
  p = (MYSQL_RES *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;

 if (!p) {
  ZVAL_NULL(retval);
 } else {
  ZVAL_LONG(retval, mysqli_result_is_unbuffered(p) ? MYSQLI_USE_RESULT:MYSQLI_STORE_RESULT);
 }
 return retval;
}
