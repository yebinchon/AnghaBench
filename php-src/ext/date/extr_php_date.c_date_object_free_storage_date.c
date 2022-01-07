
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int std; scalar_t__ time; } ;
typedef TYPE_1__ php_date_obj ;


 TYPE_1__* php_date_obj_from_obj (int *) ;
 int timelib_time_dtor (scalar_t__) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void date_object_free_storage_date(zend_object *object)
{
 php_date_obj *intern = php_date_obj_from_obj(object);

 if (intern->time) {
  timelib_time_dtor(intern->time);
 }

 zend_object_std_dtor(&intern->std);
}
