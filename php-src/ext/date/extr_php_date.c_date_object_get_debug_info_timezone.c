
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ php_timezone_obj ;
typedef int HashTable ;


 int ZVAL_LONG (int *,int ) ;
 TYPE_1__* php_timezone_obj_from_obj (int *) ;
 int php_timezone_to_string (TYPE_1__*,int *) ;
 int * zend_array_dup (int *) ;
 int zend_hash_str_update (int *,char*,int,int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *date_object_get_debug_info_timezone(zend_object *object, int *is_temp)
{
 HashTable *ht, *props;
 zval zv;
 php_timezone_obj *tzobj;

 tzobj = php_timezone_obj_from_obj(object);
 props = zend_std_get_properties(object);

 *is_temp = 1;
 ht = zend_array_dup(props);

 ZVAL_LONG(&zv, tzobj->type);
 zend_hash_str_update(ht, "timezone_type", sizeof("timezone_type")-1, &zv);

 php_timezone_to_string(tzobj, &zv);
 zend_hash_str_update(ht, "timezone", sizeof("timezone")-1, &zv);

 return ht;
}
