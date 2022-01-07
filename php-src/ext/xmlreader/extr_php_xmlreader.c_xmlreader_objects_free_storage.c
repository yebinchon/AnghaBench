
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {int std; } ;
typedef TYPE_1__ xmlreader_object ;


 TYPE_1__* php_xmlreader_fetch_object (int *) ;
 int xmlreader_free_resources (TYPE_1__*) ;
 int zend_object_std_dtor (int *) ;

void xmlreader_objects_free_storage(zend_object *object)
{
 xmlreader_object *intern = php_xmlreader_fetch_object(object);

 zend_object_std_dtor(&intern->std);

 xmlreader_free_resources(intern);
}
