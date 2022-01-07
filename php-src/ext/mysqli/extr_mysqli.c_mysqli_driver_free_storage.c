
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;


 int mysqli_objects_free_storage (int *) ;

__attribute__((used)) static void mysqli_driver_free_storage(zend_object *object)
{
 mysqli_objects_free_storage(object);
}
