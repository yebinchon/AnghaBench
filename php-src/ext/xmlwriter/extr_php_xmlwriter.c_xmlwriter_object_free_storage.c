
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int std; int * output; int * ptr; } ;
typedef TYPE_1__ ze_xmlwriter_object ;


 TYPE_1__* php_xmlwriter_fetch_object (int *) ;
 int xmlBufferFree (int *) ;
 int xmlFreeTextWriter (int *) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void xmlwriter_object_free_storage(zend_object *object)
{
 ze_xmlwriter_object *intern = php_xmlwriter_fetch_object(object);
 if (!intern) {
  return;
 }
 if (intern->ptr) {
  xmlFreeTextWriter(intern->ptr);
  intern->ptr = ((void*)0);
 }
 if (intern->output) {
  xmlBufferFree(intern->output);
  intern->output = ((void*)0);
 }
 zend_object_std_dtor(&intern->std);
}
