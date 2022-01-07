
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int BAD_CAST (char*) ;
 int FIND_ZVAL_NULL (int *,int ,int) ;
 scalar_t__ IS_STRING ;
 int SOAP_ENCODED ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int Z_STRLEN_P (int *) ;
 scalar_t__ Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * php_base64_encode (unsigned char*,int ) ;
 int set_ns_and_type (int ,int ) ;
 int xmlAddChild (int ,int ) ;
 int xmlNewNode (int *,int ) ;
 int xmlNewTextLen (int ,int ) ;
 int zend_string_release_ex (int *,int ) ;
 int * zval_get_string_func (int *) ;

__attribute__((used)) static xmlNodePtr to_xml_base64(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 xmlNodePtr ret, text;
 zend_string *str;

 ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 xmlAddChild(parent, ret);
 FIND_ZVAL_NULL(data, ret, style);

 if (Z_TYPE_P(data) == IS_STRING) {
  str = php_base64_encode((unsigned char*)Z_STRVAL_P(data), Z_STRLEN_P(data));
 } else {
  zend_string *tmp = zval_get_string_func(data);
  str = php_base64_encode((unsigned char*) ZSTR_VAL(tmp), ZSTR_LEN(tmp));
  zend_string_release_ex(tmp, 0);
 }

 text = xmlNewTextLen(BAD_CAST(ZSTR_VAL(str)), ZSTR_LEN(str));
 xmlAddChild(ret, text);
 zend_string_release_ex(str, 0);

 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, type);
 }
 return ret;
}
