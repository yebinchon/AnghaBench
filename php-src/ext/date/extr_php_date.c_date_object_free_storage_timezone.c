
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_5__ {int abbr; } ;
struct TYPE_6__ {TYPE_1__ z; } ;
struct TYPE_7__ {scalar_t__ type; int std; TYPE_2__ tzi; } ;
typedef TYPE_3__ php_timezone_obj ;


 scalar_t__ TIMELIB_ZONETYPE_ABBR ;
 TYPE_3__* php_timezone_obj_from_obj (int *) ;
 int timelib_free (int ) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void date_object_free_storage_timezone(zend_object *object)
{
 php_timezone_obj *intern = php_timezone_obj_from_obj(object);

 if (intern->type == TIMELIB_ZONETYPE_ABBR) {
  timelib_free(intern->tzi.z.abbr);
 }
 zend_object_std_dtor(&intern->std);
}
