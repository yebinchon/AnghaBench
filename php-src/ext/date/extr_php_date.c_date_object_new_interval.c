
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
typedef TYPE_2__ php_interval_obj ;


 int date_object_handlers_interval ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *date_object_new_interval(zend_class_entry *class_type)
{
 php_interval_obj *intern = zend_object_alloc(sizeof(php_interval_obj), class_type);

 zend_object_std_init(&intern->std, class_type);
 object_properties_init(&intern->std, class_type);
 intern->std.handlers = &date_object_handlers_interval;

 return &intern->std;
}
