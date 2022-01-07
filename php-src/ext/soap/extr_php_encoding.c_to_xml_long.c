
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int xmlNodePtr ;
typedef int s ;
typedef int encodeTypePtr ;


 int BAD_CAST (char*) ;
 int FIND_ZVAL_NULL (int *,int ,int) ;
 scalar_t__ IS_DOUBLE ;
 int SOAP_ENCODED ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int Z_DVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 double floor (int ) ;
 int set_ns_and_type (int ,int ) ;
 int snprintf (char*,int,char*,double) ;
 int xmlAddChild (int ,int ) ;
 int xmlNewNode (int *,int ) ;
 int xmlNodeSetContent (int ,int ) ;
 int xmlNodeSetContentLen (int ,int ,int ) ;
 int * zend_long_to_str (int ) ;
 int zend_string_release_ex (int *,int ) ;
 int zval_get_long (int *) ;

__attribute__((used)) static xmlNodePtr to_xml_long(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 xmlNodePtr ret;

 ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 xmlAddChild(parent, ret);
 FIND_ZVAL_NULL(data, ret, style);

 if (Z_TYPE_P(data) == IS_DOUBLE) {
  char s[256];

  snprintf(s, sizeof(s), "%0.0F",floor(Z_DVAL_P(data)));
  xmlNodeSetContent(ret, BAD_CAST(s));
 } else {
  zend_string *str = zend_long_to_str(zval_get_long(data));
  xmlNodeSetContentLen(ret, BAD_CAST(ZSTR_VAL(str)), ZSTR_LEN(str));
  zend_string_release_ex(str, 0);
 }

 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, type);
 }
 return ret;
}
