
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zval ;
typedef int zend_llist_position ;
struct TYPE_13__ {scalar_t__ ptr; } ;
typedef TYPE_3__ mysqli_object ;
struct TYPE_17__ {TYPE_2__* data; } ;
struct TYPE_16__ {scalar_t__ ptr; } ;
struct TYPE_15__ {int error; int sqlstate; scalar_t__ error_no; } ;
struct TYPE_14__ {TYPE_7__* mysql; } ;
struct TYPE_12__ {TYPE_1__* error_info; } ;
struct TYPE_11__ {int error_list; } ;
typedef TYPE_4__ MY_MYSQL ;
typedef TYPE_5__ MYSQLND_ERROR_LIST_ELEMENT ;
typedef TYPE_6__ MYSQLI_RESOURCE ;


 int CHECK_STATUS (int ) ;
 int MYSQLI_STATUS_VALID ;
 int ZVAL_EMPTY_ARRAY (int *) ;
 int add_assoc_long_ex (int *,char*,int,scalar_t__) ;
 int add_assoc_string_ex (int *,char*,int,int ) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;
 scalar_t__ mysql_errno (TYPE_7__*) ;
 int mysql_error (TYPE_7__*) ;
 int mysql_sqlstate (TYPE_7__*) ;
 scalar_t__ zend_llist_get_first_ex (int *,int *) ;
 scalar_t__ zend_llist_get_next_ex (int *,int *) ;

__attribute__((used)) static zval *link_error_list_read(mysqli_object *obj, zval *retval)
{
 MY_MYSQL *mysql;

 CHECK_STATUS(MYSQLI_STATUS_VALID);

  mysql = (MY_MYSQL *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;

 if (mysql) {
  array_init(retval);
  if (mysql_errno(mysql->mysql)) {
   zval single_error;
   array_init(&single_error);
   add_assoc_long_ex(&single_error, "errno", sizeof("errno") - 1, mysql_errno(mysql->mysql));
   add_assoc_string_ex(&single_error, "sqlstate", sizeof("sqlstate") - 1, mysql_sqlstate(mysql->mysql));
   add_assoc_string_ex(&single_error, "error", sizeof("error") - 1, mysql_error(mysql->mysql));
   add_next_index_zval(retval, &single_error);
  }

 } else {
  ZVAL_EMPTY_ARRAY(retval);
 }

 return retval;
}
