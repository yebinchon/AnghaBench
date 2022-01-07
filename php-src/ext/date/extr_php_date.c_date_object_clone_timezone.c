
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int ce; } ;
typedef TYPE_3__ zend_object ;
struct TYPE_12__ {int abbr; int dst; int utc_offset; } ;
struct TYPE_13__ {TYPE_1__ z; int utc_offset; int tz; } ;
struct TYPE_15__ {int initialized; int type; TYPE_3__ std; TYPE_2__ tzi; } ;
typedef TYPE_4__ php_timezone_obj ;





 TYPE_3__* date_object_new_timezone (int ) ;
 TYPE_4__* php_timezone_obj_from_obj (TYPE_3__*) ;
 int timelib_strdup (int ) ;
 int zend_objects_clone_members (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static zend_object *date_object_clone_timezone(zend_object *this_ptr)
{
 php_timezone_obj *old_obj = php_timezone_obj_from_obj(this_ptr);
 php_timezone_obj *new_obj = php_timezone_obj_from_obj(date_object_new_timezone(old_obj->std.ce));

 zend_objects_clone_members(&new_obj->std, &old_obj->std);
 if (!old_obj->initialized) {
  return &new_obj->std;
 }

 new_obj->type = old_obj->type;
 new_obj->initialized = 1;
 switch (new_obj->type) {
  case 129:
   new_obj->tzi.tz = old_obj->tzi.tz;
   break;
  case 128:
   new_obj->tzi.utc_offset = old_obj->tzi.utc_offset;
   break;
  case 130:
   new_obj->tzi.z.utc_offset = old_obj->tzi.z.utc_offset;
   new_obj->tzi.z.dst = old_obj->tzi.z.dst;
   new_obj->tzi.z.abbr = timelib_strdup(old_obj->tzi.z.abbr);
   break;
 }

 return &new_obj->std;
}
