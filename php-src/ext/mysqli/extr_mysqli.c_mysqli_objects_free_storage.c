
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int zo; scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
typedef int MYSQLI_RESOURCE ;


 int efree (int *) ;
 TYPE_1__* php_mysqli_fetch_object (int *) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void mysqli_objects_free_storage(zend_object *object)
{
 mysqli_object *intern = php_mysqli_fetch_object(object);
 MYSQLI_RESOURCE *my_res = (MYSQLI_RESOURCE *)intern->ptr;

 if (my_res) {
  efree(my_res);
 }
 zend_object_std_dtor(&intern->zo);
}
