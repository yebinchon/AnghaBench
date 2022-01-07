
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ zo; int * prop_handler; } ;
typedef TYPE_2__ ze_zip_object ;


 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;
 int zip_object_handlers ;
 int zip_prop_handlers ;

__attribute__((used)) static zend_object *php_zip_object_new(zend_class_entry *class_type)
{
 ze_zip_object *intern;

 intern = zend_object_alloc(sizeof(ze_zip_object), class_type);
 intern->prop_handler = &zip_prop_handlers;
 zend_object_std_init(&intern->zo, class_type);
 object_properties_init(&intern->zo, class_type);
 intern->zo.handlers = &zip_object_handlers;

 return &intern->zo;
}
