
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object ;
typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_6__ {scalar_t__ profiling; int * ptr; scalar_t__ doc; scalar_t__ node_list; scalar_t__ registered_phpfunctions; scalar_t__ parameter; int std; } ;
typedef TYPE_2__ xsl_object ;
struct TYPE_5__ {int * _private; } ;


 int FREE_HASHTABLE (scalar_t__) ;
 int efree (scalar_t__) ;
 int php_libxml_decrement_doc_ref (scalar_t__) ;
 TYPE_2__* php_xsl_fetch_object (int *) ;
 int xsltFreeStylesheet (TYPE_1__*) ;
 int zend_hash_destroy (scalar_t__) ;
 int zend_object_std_dtor (int *) ;

void xsl_objects_free_storage(zend_object *object)
{
 xsl_object *intern = php_xsl_fetch_object(object);

 zend_object_std_dtor(&intern->std);

 zend_hash_destroy(intern->parameter);
 FREE_HASHTABLE(intern->parameter);

 zend_hash_destroy(intern->registered_phpfunctions);
 FREE_HASHTABLE(intern->registered_phpfunctions);

 if (intern->node_list) {
  zend_hash_destroy(intern->node_list);
  FREE_HASHTABLE(intern->node_list);
 }

 if (intern->doc) {
  php_libxml_decrement_doc_ref(intern->doc);
  efree(intern->doc);
 }

 if (intern->ptr) {

  if (((xsltStylesheetPtr) intern->ptr)->_private != ((void*)0)) {
   ((xsltStylesheetPtr) intern->ptr)->_private = ((void*)0);
  }

  xsltFreeStylesheet((xsltStylesheetPtr) intern->ptr);
  intern->ptr = ((void*)0);
 }
 if (intern->profiling) {
  efree(intern->profiling);
 }
}
