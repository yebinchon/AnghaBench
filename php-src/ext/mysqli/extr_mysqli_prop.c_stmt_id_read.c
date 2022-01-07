
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {int stmt; } ;
typedef TYPE_2__ MY_STMT ;
typedef TYPE_3__ MYSQLI_RESOURCE ;


 int CHECK_STATUS (int ) ;
 int MYSQLI_STATUS_VALID ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int mysqli_stmt_get_id (int ) ;

__attribute__((used)) static zval *stmt_id_read(mysqli_object *obj, zval *retval)
{
 MY_STMT *p;

 CHECK_STATUS(MYSQLI_STATUS_VALID);

  p = (MY_STMT*)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;

 if (!p) {
  ZVAL_NULL(retval);
 } else {
  ZVAL_LONG(retval, mysqli_stmt_get_id(p->stmt));
 }
 return retval;
}
