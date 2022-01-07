
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ zo; } ;
typedef TYPE_2__ finfo_object ;


 int finfo_object_handlers ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *finfo_objects_new(zend_class_entry *class_type)
{
 finfo_object *intern;

 intern = zend_object_alloc(sizeof(finfo_object), class_type);

 zend_object_std_init(&intern->zo, class_type);
 object_properties_init(&intern->zo, class_type);
 intern->zo.handlers = &finfo_object_handlers;

 return &intern->zo;
}
