
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ce; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_12__ {TYPE_1__ std; TYPE_5__* time; } ;
typedef TYPE_2__ php_date_obj ;
struct TYPE_13__ {scalar_t__ tz_info; scalar_t__ tz_abbr; } ;


 TYPE_1__* date_object_new_date (int ) ;
 TYPE_2__* php_date_obj_from_obj (TYPE_1__*) ;
 scalar_t__ timelib_strdup (scalar_t__) ;
 TYPE_5__* timelib_time_ctor () ;
 int zend_objects_clone_members (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static zend_object *date_object_clone_date(zend_object *this_ptr)
{
 php_date_obj *old_obj = php_date_obj_from_obj(this_ptr);
 php_date_obj *new_obj = php_date_obj_from_obj(date_object_new_date(old_obj->std.ce));

 zend_objects_clone_members(&new_obj->std, &old_obj->std);
 if (!old_obj->time) {
  return &new_obj->std;
 }


 new_obj->time = timelib_time_ctor();
 *new_obj->time = *old_obj->time;
 if (old_obj->time->tz_abbr) {
  new_obj->time->tz_abbr = timelib_strdup(old_obj->time->tz_abbr);
 }
 if (old_obj->time->tz_info) {
  new_obj->time->tz_info = old_obj->time->tz_info;
 }

 return &new_obj->std;
}
