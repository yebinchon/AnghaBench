
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_9__ {TYPE_1__ obj; int error; } ;
typedef TYPE_2__ php_converter_object ;


 int intl_error_init (int *) ;
 int object_properties_init (TYPE_1__*,int *) ;
 int php_converter_object_handlers ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *php_converter_object_ctor(zend_class_entry *ce, php_converter_object **pobjval) {
 php_converter_object *objval;

 objval = zend_object_alloc(sizeof(php_converter_object), ce);

 zend_object_std_init(&objval->obj, ce);
 object_properties_init(&objval->obj, ce);
 intl_error_init(&(objval->error));

 objval->obj.handlers = &php_converter_object_handlers;
 *pobjval = objval;

 return &objval->obj;
}
