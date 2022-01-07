
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_prop_purpose ;
typedef int zend_object ;
struct TYPE_4__ {int type; int initialized; } ;
typedef TYPE_1__ php_timezone_obj ;
typedef int HashTable ;







 int ZVAL_LONG (int *,int ) ;
 TYPE_1__* php_timezone_obj_from_obj (int *) ;
 int php_timezone_to_string (TYPE_1__*,int *) ;
 int * zend_array_dup (int ) ;
 int zend_hash_str_update (int *,char*,int,int *) ;
 int zend_std_get_properties (int *) ;
 int * zend_std_get_properties_for (int *,int) ;

__attribute__((used)) static HashTable *date_object_get_properties_for_timezone(zend_object *object, zend_prop_purpose purpose)
{
 HashTable *props;
 zval zv;
 php_timezone_obj *tzobj;

 switch (purpose) {
  case 131:
  case 129:
  case 128:
  case 130:
  case 132:
   break;
  default:
   return zend_std_get_properties_for(object, purpose);
 }

 tzobj = php_timezone_obj_from_obj(object);
 props = zend_array_dup(zend_std_get_properties(object));
 if (!tzobj->initialized) {
  return props;
 }

 ZVAL_LONG(&zv, tzobj->type);
 zend_hash_str_update(props, "timezone_type", sizeof("timezone_type")-1, &zv);

 php_timezone_to_string(tzobj, &zv);
 zend_hash_str_update(props, "timezone", sizeof("timezone")-1, &zv);

 return props;
}
