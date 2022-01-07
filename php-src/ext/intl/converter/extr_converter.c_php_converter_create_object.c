
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
typedef int zend_class_entry ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ php_converter_object ;


 int object_properties_init (int *,int *) ;
 int * php_converter_object_ctor (int *,TYPE_1__**) ;

__attribute__((used)) static zend_object *php_converter_create_object(zend_class_entry *ce) {
 php_converter_object *objval = ((void*)0);
 zend_object *retval = php_converter_object_ctor(ce, &objval);

 object_properties_init(&(objval->obj), ce);

 return retval;
}
