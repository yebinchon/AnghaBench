
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int std; int interval; scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
typedef TYPE_1__ php_period_obj ;


 TYPE_1__* php_period_obj_from_obj (int *) ;
 int timelib_rel_time_dtor (int ) ;
 int timelib_time_dtor (scalar_t__) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void date_object_free_storage_period(zend_object *object)
{
 php_period_obj *intern = php_period_obj_from_obj(object);

 if (intern->start) {
  timelib_time_dtor(intern->start);
 }

 if (intern->current) {
  timelib_time_dtor(intern->current);
 }

 if (intern->end) {
  timelib_time_dtor(intern->end);
 }

 timelib_rel_time_dtor(intern->interval);
 zend_object_std_dtor(&intern->std);
}
