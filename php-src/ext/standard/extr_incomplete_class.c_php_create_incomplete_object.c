
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;


 int object_properties_init (TYPE_1__*,int *) ;
 int php_incomplete_object_handlers ;
 TYPE_1__* zend_objects_new (int *) ;

__attribute__((used)) static zend_object *php_create_incomplete_object(zend_class_entry *class_type)
{
 zend_object *object;

 object = zend_objects_new( class_type);
 object->handlers = &php_incomplete_object_handlers;

 object_properties_init(object, class_type);

 return object;
}
