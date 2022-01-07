
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
typedef scalar_t__ my_ulonglong ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {int stmt; } ;
typedef TYPE_2__ MY_STMT ;
typedef TYPE_3__ MYSQLI_RESOURCE ;


 int CHECK_STATUS (int ) ;
 int MYSQLI_LLU_SPEC ;
 int MYSQLI_STATUS_VALID ;
 scalar_t__ ZEND_LONG_MAX ;
 int ZVAL_LONG (int *,int) ;
 int ZVAL_NEW_STR (int *,int ) ;
 int ZVAL_NULL (int *) ;
 scalar_t__ mysql_stmt_affected_rows (int ) ;
 int strpprintf (int ,int ,scalar_t__) ;

__attribute__((used)) static zval *stmt_affected_rows_read(mysqli_object *obj, zval *retval)
{
 MY_STMT *p;
 my_ulonglong rc;

 CHECK_STATUS(MYSQLI_STATUS_VALID);

  p = (MY_STMT *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;

 if (!p) {
  ZVAL_NULL(retval);
 } else {
  rc = mysql_stmt_affected_rows(p->stmt);

  if (rc == (my_ulonglong) -1) {
   ZVAL_LONG(retval, -1);
   return retval;
  }

  if (rc < ZEND_LONG_MAX) {
   ZVAL_LONG(retval, (zend_long) rc);
  } else {
   ZVAL_NEW_STR(retval, strpprintf(0, MYSQLI_LLU_SPEC, rc));
  }
 }
 return retval;
}
