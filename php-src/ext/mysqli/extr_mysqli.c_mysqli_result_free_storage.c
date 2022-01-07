
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_2__ MYSQLI_RESOURCE ;


 int mysql_free_result (scalar_t__) ;
 int mysqli_objects_free_storage (int *) ;
 TYPE_1__* php_mysqli_fetch_object (int *) ;

__attribute__((used)) static void mysqli_result_free_storage(zend_object *object)
{
 mysqli_object *intern = php_mysqli_fetch_object(object);
 MYSQLI_RESOURCE *my_res = (MYSQLI_RESOURCE *)intern->ptr;

 if (my_res && my_res->ptr) {
  mysql_free_result(my_res->ptr);
 }
 mysqli_objects_free_storage(object);
}
