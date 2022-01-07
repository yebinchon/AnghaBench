
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; } ;
typedef TYPE_2__ php_hashcontext_object ;


 int object_properties_init (TYPE_1__*,int *) ;
 int php_hashcontext_handlers ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object* php_hashcontext_create(zend_class_entry *ce) {
 php_hashcontext_object *objval = zend_object_alloc(sizeof(php_hashcontext_object), ce);
 zend_object *zobj = &objval->std;

 zend_object_std_init(zobj, ce);
 object_properties_init(zobj, ce);
 zobj->handlers = &php_hashcontext_handlers;

 return zobj;
}
