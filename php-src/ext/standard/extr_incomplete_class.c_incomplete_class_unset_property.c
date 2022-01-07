
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_object ;


 int E_NOTICE ;
 int incomplete_class_message (int *,int ) ;

__attribute__((used)) static void incomplete_class_unset_property(zend_object *object, zend_string *member, void **cache_slot)
{
 incomplete_class_message(object, E_NOTICE);
}
