
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int std; int diff; } ;
typedef TYPE_1__ php_interval_obj ;


 TYPE_1__* php_interval_obj_from_obj (int *) ;
 int timelib_rel_time_dtor (int ) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void date_object_free_storage_interval(zend_object *object)
{
 php_interval_obj *intern = php_interval_obj_from_obj(object);

 timelib_rel_time_dtor(intern->diff);
 zend_object_std_dtor(&intern->std);
}
