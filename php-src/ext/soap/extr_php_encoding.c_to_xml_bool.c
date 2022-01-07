
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int BAD_CAST (char*) ;
 int FIND_ZVAL_NULL (int *,int ,int) ;
 int SOAP_ENCODED ;
 int set_ns_and_type (int ,int ) ;
 int xmlAddChild (int ,int ) ;
 int xmlNewNode (int *,int ) ;
 int xmlNodeSetContent (int ,int ) ;
 scalar_t__ zend_is_true (int *) ;

__attribute__((used)) static xmlNodePtr to_xml_bool(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 xmlNodePtr ret;

 ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 xmlAddChild(parent, ret);
 FIND_ZVAL_NULL(data, ret, style);

 if (zend_is_true(data)) {
  xmlNodeSetContent(ret, BAD_CAST("true"));
 } else {
  xmlNodeSetContent(ret, BAD_CAST("false"));
 }

 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, type);
 }
 return ret;
}
