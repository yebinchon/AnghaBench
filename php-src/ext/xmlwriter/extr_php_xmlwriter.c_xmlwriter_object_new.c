
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
typedef TYPE_2__ ze_xmlwriter_object ;


 int object_properties_init (TYPE_1__*,int *) ;
 int xmlwriter_object_handlers ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *xmlwriter_object_new(zend_class_entry *class_type)
{
 ze_xmlwriter_object *intern;

 intern = zend_object_alloc(sizeof(ze_xmlwriter_object), class_type);
 zend_object_std_init(&intern->std, class_type);
 object_properties_init(&intern->std, class_type);
 intern->std.handlers = &xmlwriter_object_handlers;

 return &intern->std;
}
