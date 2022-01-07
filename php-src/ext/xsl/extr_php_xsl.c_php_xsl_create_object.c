
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_class_entry ;
typedef scalar_t__ xsltStylesheetPtr ;


 int ZVAL_COPY (int *,int *) ;
 int ZVAL_NULL (int *) ;
 int object_init_ex (int *,int *) ;
 int php_xsl_set_object (int *,void*) ;
 int * xsl_object_get_data (void*) ;
 int * xsl_xsltprocessor_class_entry ;

void php_xsl_create_object(xsltStylesheetPtr obj, zval *wrapper_in, zval *return_value )
{
 zval *wrapper;
 zend_class_entry *ce;

 if (!obj) {
  wrapper = wrapper_in;
  ZVAL_NULL(wrapper);
  return;
 }

 if ((wrapper = xsl_object_get_data((void *) obj))) {
  ZVAL_COPY(wrapper, wrapper_in);
  return;
 }

 if (!wrapper_in) {
  wrapper = return_value;
 } else {
  wrapper = wrapper_in;
 }


 ce = xsl_xsltprocessor_class_entry;

 if (!wrapper_in) {
  object_init_ex(wrapper, ce);
 }
 php_xsl_set_object(wrapper, (void *) obj);

 return;
}
